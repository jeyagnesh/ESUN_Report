pageextension 50155 ExtSalesInvoice extends "Sales Invoice"
{
    layout
    {
        addafter("Sell-to Customer Name")
        {
            field(ContractNo1; ContractNo1)
            {
                ApplicationArea = all;
                Caption = 'Contract No';
            }
        }
        moveafter(General; "Invoice Details", "Shipping and Billing")
    }
    actions
    {
        addafter(ProformaInvoice)
        {
            action(CertOfOrigin)
            {
                ApplicationArea = basic, suite;
                Visible = EsunButtonVisible;
                Caption = 'Cert of Orgin';
                Ellipsis = true;
                Image = Print;
                Promoted = true;
                PromotedCategory = Process;
                trigger OnAction()
                var
                    SalesHeader: Record "Sales Header";
                begin
                    RecCompInfo.Get();
                    if RecCompInfo.Name = 'Esun International Pte Ltd' then begin
                        SalesHeader.SetRange("Document Type", Rec."Document Type");
                        SalesHeader.SetRange("No.", Rec."No.");
                        if SalesHeader.FindSet() then
                            Report.Run(Report::CertificateOfOrigin, true, false, SalesHeader);
                    end;
                end;
            }
        }
        addafter(CertOfOrigin)
        {
            action(DeliveryOrder)
            {
                ApplicationArea = all;
                Caption = 'DO';
                Visible = EsunButtonVisible;
                Image = Print;
                Promoted = true;
                PromotedCategory = Process;
                trigger OnAction()
                var
                    Header: Record "Sales Header";
                begin
                    RecCompInfo.Get();
                    if RecCompInfo.Name = 'Esun International Pte Ltd' then begin
                        Header.SetRange("Document Type", Rec."Document Type");
                        Header.SetRange("No.", Rec."No.");
                        if Header.FindSet() then
                            Report.Run(Report::EsunDeliveryOrder, true, true, Header);
                    end;
                end;
            }
        }
        addafter(DeliveryOrder)
        {
            action(PackingList)
            {
                ApplicationArea = all;
                Caption = 'Packing List';
                Visible = EsunButtonVisible;
                Image = Print;
                Promoted = true;
                PromotedCategory = Process;
                trigger OnAction()
                var
                    SalesHeader: Record "Sales Header";
                begin
                    RecCompInfo.Get();
                    if RecCompInfo.Name = 'Esun International Pte Ltd' then begin
                        SalesHeader.SetRange("Document Type", Rec."Document Type");
                        SalesHeader.SetRange("No.", Rec."No.");
                        if SalesHeader.FindSet() then
                            Report.Run(Report::PackingList, true, false, SalesHeader);
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
        EsunButtonVisible: Boolean;
        HiMetalButtonVisible: Boolean;
        RecCompInfo: Record "Company Information";
        ContractNo1: Text;
}