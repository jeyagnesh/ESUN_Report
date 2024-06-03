pageextension 50159 PstSlsInvExt extends "Posted Sales Invoice"
{
    layout
    {
        modify("Ship-to Address")
        {
            Editable = true;
        }
        modify("Ship-to Address 2")
        {
            Editable = true;
        }
        modify("Ship-to Post Code")
        {
            Editable = true;
        }
        modify("Ship-to County")
        {
            Editable = true;
        }
        modify("Ship-to Country/Region Code")
        {
            Editable = true;
        }
        modify("Bill-to Address")
        {
            Editable = true;
        }
        modify("Bill-to Address 2")
        {
            Editable = true;
        }
        modify("Bill-to Post Code")
        {
            Editable = true;
        }
        modify("Bill-to County")
        {
            Editable = true;
        }
        modify("Bill-to Country/Region Code")
        {
            Editable = true;
        }
    }
    actions
    {
        addafter(SendCustom)
        {
            action("Proforma Invoice")
            {
                ApplicationArea = All;
                Visible = EsunButtonVisible;
                Ellipsis = true;
                Image = Print;
                Promoted = true;
                PromotedCategory = Category6;
                trigger OnAction()
                var
                    Sales: Record "Sales Invoice Header";
                begin
                    RecCompInfo.Get();
                    if RecCompInfo.Name = 'Esun International Pte Ltd' then begin
                        Sales.SetRange("No.", rec."No.");
                        if Sales.FindSet() then
                            Report.Run(Report::"Performa", true, false, Sales);
                    end;
                end;
            }
        }
        addafter(Print)
        {
            action("Debit Note")
            {
                ApplicationArea = All;
                Visible = HiMetalButtonVisible;
                Ellipsis = true;
                Image = Print;
                Promoted = true;
                PromotedCategory = Category6;
                trigger OnAction()
                var
                    SalesInvoiceHeader: Record "Sales Invoice Header";
                begin
                    RecCompInfo.get();
                    if RecCompInfo.Name = 'Himetal Enterprise Pte Ltd' then begin
                        SalesInvoiceHeader.SetRange("No.", Rec."No.");
                        SalesInvoiceHeader.SetRange("Sell-to Customer No.", Rec."Sell-to Customer No.");
                        if SalesInvoiceHeader.FindFirst() then
                            Report.RunModal(Report::"Himetal-Debit Note", true, false, SalesInvoiceHeader);
                    end;
                end;
            }
        }
        addafter(Print)
        {
            action("Tax Invoice")
            {
                ApplicationArea = All;
                Visible = HiMetalButtonVisible;
                Ellipsis = true;
                Image = Print;
                Promoted = true;
                PromotedCategory = Category6;
                trigger OnAction()
                var
                    SalesInvoiceHeader: Record "Sales Invoice Header";
                begin
                    RecCompInfo.get();
                    if RecCompInfo.Name = 'Himetal Enterprise Pte Ltd' then begin
                        SalesInvoiceHeader.SetRange("No.", Rec."No.");
                        SalesInvoiceHeader.SetRange("Sell-to Customer No.", Rec."Sell-to Customer No.");
                        if SalesInvoiceHeader.FindFirst() then
                            Report.RunModal(Report::"Himetal-Tax Invoice", true, false, SalesInvoiceHeader);
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
        EsunButtonVisible := false;
        HiMetalButtonVisible := false;
        if RecCompInfo.Name = 'Esun International Pte Ltd' then
            EsunButtonVisible := true;
        if RecCompInfo.Name = 'Himetal Enterprise Pte Ltd' then
            HiMetalButtonVisible := true;
    end;

    var
        RecCompInfo: Record "Company Information";
        HiMetalButtonVisible: Boolean;
        EsunButtonVisible: Boolean;
}