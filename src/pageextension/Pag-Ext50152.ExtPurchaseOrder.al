pageextension 50152 "Ext Purchase Order" extends "Purchase Order"
{
    layout
    {
        addafter("Buy-from Vendor Name")
        {
            field("Purchase Contract No."; Rec."Purchase Contract No.")
            {
                ApplicationArea = All;
            }
        }
        addafter("Location Code")
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
        addafter(Status)
        {
            group("Work Description")
            {
                Caption = 'Work Description';
                field(WorkDescription; WorkDescription)
                {
                    ApplicationArea = All;
                    MultiLine = true;
                    ShowCaption = false;
                    ToolTip = 'Specifies the products or service being offered.';
                    trigger OnValidate()
                    begin
                        Rec.SetWorkDescription(WorkDescription);
                    end;
                }
            }
        }
        moveafter(General; "Invoice Details", "Shipping and Payment")
    }
    actions
    {
        addafter(AttachAsPDF)
        {
            action("Purchase Contract")
            {
                ApplicationArea = All;
                Visible = EsunButtonVisible;
                Ellipsis = true;
                Image = Print;
                Promoted = true;
                PromotedCategory = Category10;
                trigger OnAction()
                var
                    PurchaseHeader: Record "Purchase Header";
                begin
                    RecCompInfo.Get();
                    if RecCompInfo.Name = 'Esun International Pte Ltd' then begin
                        PurchaseHeader.SetRange("Document Type", Rec."Document Type");
                        PurchaseHeader.SetRange("No.", rec."No.");
                        if PurchaseHeader.FindSet() then
                            Report.Run(Report::"Purchase Contract", true, false, PurchaseHeader);
                    end
                end;
            }
        }
        addafter("&Print")
        {
            action("Purchase Order")
            {
                ApplicationArea = All;
                Visible = HiMetalButtonVisible;
                Ellipsis = true;
                Image = Print;
                Promoted = true;
                PromotedCategory = Category10;
                trigger OnAction()
                var
                    PurchaseHeader: Record "Purchase Header";
                begin
                    RecCompInfo.get();
                    if RecCompInfo.Name = 'Himetal Enterprise Pte Ltd' then begin
                        PurchaseHeader.SetRange("Document Type", Rec."Document Type");
                        PurchaseHeader.SetRange("No.", Rec."No.");
                        if PurchaseHeader.FindFirst() then
                            Report.RunModal(Report::"HiMetal-PurchaseOrder", true, false, PurchaseHeader);
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

    trigger OnAfterGetRecord()
    begin
        WorkDescription := Rec.GetWorkDescription();
    end;

    var
        RecCompInfo: Record "Company Information";
        HiMetalButtonVisible: Boolean;
        EsunButtonVisible: Boolean;
        WorkDescription: Text;
}