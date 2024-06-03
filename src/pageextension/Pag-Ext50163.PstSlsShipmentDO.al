pageextension 50163 PstSlsShipmentDO extends "Posted Sales Shipment"
{
    layout
    {

    }
    actions
    {
        addafter("&Shipment")
        {
            action("Delivery Order")
            {
                ApplicationArea = All;
                Visible = HiMetalButtonVisible;
                Ellipsis = true;
                Image = Print;
                Promoted = true;
                PromotedCategory = Category5;
                trigger OnAction()
                var
                    SalesShipmentHeader: Record "Sales Shipment Header";
                begin
                    RecCompInfo.get();
                    if RecCompInfo.Name = 'Himetal Enterprise Pte Ltd' then begin
                        SalesShipmentHeader.SetRange("No.", Rec."No.");
                        SalesShipmentHeader.SetRange("Sell-to Customer No.", Rec."Sell-to Customer No.");
                        if SalesShipmentHeader.FindFirst() then
                            Report.RunModal(Report::"Himetal-Delivery Order", true, false, SalesShipmentHeader);
                    end;
                end;
            }
        }
        addafter("&Print")
        {
            action(DO)
            {
                ApplicationArea = All;
                caption = 'DO(export)';
                Visible = EsunButtonVisible;
                Ellipsis = true;
                Image = Print;
                Promoted = true;
                PromotedCategory = Process;
                trigger OnAction()
                var
                    SalesShipmentHeader: Record "Sales Shipment Header";
                begin
                    RecCompInfo.get();
                    if RecCompInfo.Name = 'Esun International Pte Ltd' then begin
                        SalesShipmentHeader.SetRange("No.", Rec."No.");
                        SalesShipmentHeader.SetRange("Sell-to Customer No.", Rec."Sell-to Customer No.");
                        if SalesShipmentHeader.FindFirst() then
                            Report.RunModal(Report::"EsunDeliveryOrder2", true, false, SalesShipmentHeader);
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

        if RecCompInfo.Name = 'Himetal Enterprise Pte Ltd' then
            HiMetalButtonVisible := true;
        if RecCompInfo.Name = 'Esun International Pte Ltd' then
            EsunButtonVisible := true;
    end;

    var
        RecCompInfo: Record "Company Information";
        HiMetalButtonVisible: Boolean;
        EsunButtonVisible: Boolean;
}