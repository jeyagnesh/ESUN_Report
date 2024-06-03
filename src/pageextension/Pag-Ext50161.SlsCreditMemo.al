pageextension 50161 SlsCreditMemo extends "Sales Credit Memo"
{
    layout
    {

    }
    actions
    {
        addafter("P&osting")
        {
            action("Goods Return Note")
            {
                ApplicationArea = All;
                Visible = HiMetalButtonVisible;
                Ellipsis = true;
                Image = Print;
                Promoted = true;
                PromotedCategory = Category8;
                trigger OnAction()
                var
                    SalesHeader: Record "Sales Header";
                begin
                    RecCompInfo.get();
                    if RecCompInfo.Name = 'Himetal Enterprise Pte Ltd' then begin
                        SalesHeader.SetRange("Document Type", Rec."Document Type");
                        SalesHeader.SetRange("No.", Rec."No.");
                        SalesHeader.SetRange("Sell-to Customer No.", Rec."Sell-to Customer No.");
                        if SalesHeader.FindFirst() then
                            Report.RunModal(Report::"Himetal-Goods Return Note", true, false, SalesHeader);
                    end;
                end;
            }
        }
    }
    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        RecCompInfo.get();
        HiMetalButtonVisible := false;
        if RecCompInfo.Name = 'Himetal Enterprise Pte Ltd' then
            HiMetalButtonVisible := true;
    end;

    var
        RecCompInfo: Record "Company Information";
        HiMetalButtonVisible: Boolean;
}