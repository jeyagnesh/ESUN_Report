pageextension 50178 PostedSalesInvList extends "Posted Sales Invoices"
{
    layout
    {
        addafter("Due Date")
        {
            field(AdjProfitLCY; AdjProfitLCY)
            {
                ApplicationArea = Basic, Suite;
                AutoFormatType = 1;
                Caption = 'Adjusted Profit (LCY)';
                ToolTip = 'Specifies the profit, taking into consideration changes in the purchase prices of the goods.';
            }
        }
    }
    trigger OnAfterGetRecord()
    var
        CustLedgEntry: Record "Cust. Ledger Entry";
    begin
        ClearAll();
        CalcTotal();

        if Rec."Currency Code" = '' then
            AmountLCY := CustAmount
        else
            AmountLCY :=
              CurrExchRate.ExchangeAmtFCYToLCY(
                WorkDate(), Rec."Currency Code", CustAmount, Rec."Currency Factor");

        CustLedgEntry.SetCurrentKey("Document No.");
        CustLedgEntry.SetRange("Document No.", Rec."No.");
        CustLedgEntry.SetRange("Document Type", CustLedgEntry."Document Type"::Invoice);
        CustLedgEntry.SetRange("Customer No.", Rec."Bill-to Customer No.");
        if CustLedgEntry.FindFirst() then
            AmountLCY := CustLedgEntry."Sales (LCY)";

        AdjProfitLCY := AmountLCY - TotalAdjCostLCY;

    end;

    local procedure CalcTotal()
    var
        CostCalcMgt: Codeunit "Cost Calculation Management";
    begin
        SalesInvLine.Reset();
        SalesInvLine.SetRange("Document No.", Rec."No.");
        if SalesInvLine.Find('-') then
            repeat
                CustAmount += SalesInvLine.Amount;

                TotalAdjCostLCY +=
                  CostCalcMgt.CalcSalesInvLineCostLCY(SalesInvLine) + CostCalcMgt.CalcSalesInvLineNonInvtblCostAmt(SalesInvLine);

            until SalesInvLine.Next() = 0;
    end;

    var
        AdjProfitLCY: Decimal;
        AmountLCY: Decimal;
        TotalAdjCostLCY: Decimal;
        CustAmount: Decimal;
        CurrExchRate: Record "Currency Exchange Rate";

        SalesInvLine: Record "Sales Invoice Line";
}
