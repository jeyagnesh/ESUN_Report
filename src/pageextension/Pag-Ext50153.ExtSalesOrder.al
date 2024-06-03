pageextension 50153 "Ext Sales Order" extends "Sales Order"
{
    layout
    {
        modify("Ship-to Code")
        {
            Editable = true;
        }
        modify("Ship-to Name")
        {
            Editable = (ShipToOptions = ShipToOptions::"Another Customer") or (ShipToOptions = ShipToOptions::"Custom Address");
            trigger OnDrillDown()
            begin
                Customer.Reset();
                if Customer.FindSet() then;
                if Page.RunModal(Page::"Customer List", Customer) = Action::LookupOK then begin
                    Rec.Validate("Ship-to Name", Customer.Name);
                    Rec.Validate("Ship-to Address", Customer.Address);
                    Rec.Validate("Ship-to Address 2", Customer."Address 2");
                    Rec.Validate("Ship-to City", Customer.City);
                    Rec.Validate("Ship-to Post Code", Customer."Post Code");
                    Rec.Validate("Ship-to Country/Region Code", Customer."Country/Region Code");
                    Rec.Validate("Ship-to Contact", Customer.Contact);
                end;
            end;

            trigger OnAfterValidate()
            begin
                if Rec."Ship-to Name" = '' then begin
                    Rec.Validate("Ship-to Address", '');
                    Rec.Validate("Ship-to Address 2", '');
                    Rec.Validate("Ship-to City", '');
                    Rec.Validate("Ship-to Post Code", '');
                    Rec.Validate("Ship-to Country/Region Code", '');
                    Rec.Validate("Ship-to Contact", '');
                end;
            end;
        }
        modify("Work Description")
        {
            Caption = 'Remarks';
        }
        addafter("Work Description")
        {
            group("Collecting Bank")
            {
                Caption = 'Collecting Bank';
                field(GetCollectingBank; CollectingBank)
                {
                    ApplicationArea = Basic, Suite;
                    MultiLine = true;
                    ShowCaption = false;
                    ToolTip = 'Specifies the products or services being offered.';
                    trigger OnValidate()
                    var
                        OutStream: OutStream;
                    begin
                        Rec."Collecting Bank".CreateOutStream(OutStream, TEXTENCODING::UTF8);
                        OutStream.WriteText(CollectingBank);
                    end;
                }
            }
        }
        addafter("Shipment Method")
        {
            field("Quantity Description"; Rec."Quantity Description")
            {
                ApplicationArea = All;
            }
            field(Packing; Rec.Packing)
            {
                ApplicationArea = All;
            }
            field(Shipment; Rec.Shipment)
            {
                ApplicationArea = All;
            }
            field(Payment; Rec.Payment)
            {
                ApplicationArea = All;
            }
        }
        addafter("Sell-to Customer Name")
        {
            field("Sales Contract No."; Rec."Sales Contract No.")
            {
                ApplicationArea = All;
            }
        }
        moveafter(General; "Invoice Details", "Shipping and Billing")
    }
    actions
    {
        addafter(AttachAsPDF)
        {
            action("Sales Contract")
            {
                ApplicationArea = All;
                Visible = EsunButtonVisible;
                Ellipsis = true;
                Image = Print;
                Promoted = true;
                PromotedCategory = Category11;
                trigger OnAction()
                var
                    SalesHeader: Record "sales Header";
                begin
                    RecCompInfo.Get();
                    if RecCompInfo.Name = 'Esun International Pte Ltd' then begin
                        SalesHeader.SetRange("Document Type", Rec."Document Type");
                        SalesHeader.SetRange("No.", rec."No.");
                        if SalesHeader.FindSet() then
                            Report.Run(Report::"Sales Contract", true, false, SalesHeader);
                    end;
                end;
            }
        }
        addafter(AttachAsPDF)
        {
            action("Proforma Invoice")
            {
                ApplicationArea = All;
                Visible = EsunButtonVisible or HiMetalButtonVisible;
                Ellipsis = true;
                Image = Print;
                Promoted = true;
                PromotedCategory = Category11;
                trigger OnAction()
                var
                    SalesHeader: Record "sales Header";
                begin
                    RecCompInfo.Get();
                    if RecCompInfo.Name = 'Esun International Pte Ltd' then begin
                        SalesHeader.SetRange("Document Type", Rec."Document Type");
                        SalesHeader.SetRange("No.", rec."No.");
                        if SalesHeader.FindSet() then
                            Report.Run(Report::"Proforma Invoice", true, false, SalesHeader);
                    end;
                    if RecCompInfo.Name = 'Himetal Enterprise Pte Ltd' then begin
                        SalesHeader.SetRange("Document Type", Rec."Document Type");
                        SalesHeader.SetRange("No.", Rec."No.");
                        SalesHeader.SetRange("Sell-to Customer No.", Rec."Sell-to Customer No.");
                        if SalesHeader.FindFirst() then
                            Report.RunModal(Report::"Himetal ProformaInv SalesOrder", true, false, SalesHeader);
                    end;
                end;
            }
        }
        addafter("Proforma Invoice")
        {
            action("Proforma Invoice 2")
            {
                ApplicationArea = All;
                Visible = EsunButtonVisible;
                Ellipsis = true;
                Image = Print;
                Promoted = true;
                PromotedCategory = Category11;
                trigger OnAction()
                var
                    SalesHeader: Record "sales Header";
                begin
                    RecCompInfo.Get();
                    if RecCompInfo.Name = 'Esun International Pte Ltd' then begin
                        SalesHeader.SetRange("No.", rec."No.");
                        if SalesHeader.FindSet() then
                            Report.Run(Report::"Performa Invoice2", true, false, SalesHeader);
                    end;
                end;
            }
        }
    }
    trigger OnAfterGetRecord()
    var
        TypeHelper: Codeunit "Type Helper";
        InStream: InStream;
        RecSalesHeader: Record "Sales Header";
    begin
        RecSalesHeader.Reset();
        if RecSalesHeader.get(Rec."Document Type", Rec."No.") then begin
            RecSalesHeader.CalcFields("Collecting Bank");
            RecSalesHeader."Collecting Bank".CreateInStream(InStream, TEXTENCODING::UTF8);
            CollectingBank := TypeHelper.ReadAsTextWithSeparator(InStream, TypeHelper.LFSeparator);
        end;
    end;

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
        CollectingBank: Text;
        EsunButtonVisible: Boolean;
        HiMetalButtonVisible: Boolean;
        RecCompInfo: Record "Company Information";
        sales: page "Sales Order";
        Customer: Record Customer;
        CustomerList: Page "Customer List";
}