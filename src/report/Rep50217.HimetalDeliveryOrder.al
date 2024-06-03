report 50217 "Himetal-Delivery Order"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = "Delivery Order";
    PreviewMode = PrintLayout;
    dataset
    {
        dataitem("Sales Shipment Header"; "Sales Shipment Header")
        {
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "No.", "Sell-to Customer No.", "No. Printed";
            dataitem(CopyLoop; "Integer")
            {
                DataItemTableView = sorting(Number);
                dataitem(PageLoop; "Integer")
                {
                    DataItemTableView = sorting(Number) where(Number = const(1));
                    column(Posted_Shipment_No; "Sales Shipment Header"."No.")
                    {

                    }
                    column(OutputNo; OutputNo)
                    {

                    }
                    column(DocumentDate; Format("Sales Shipment Header"."Document Date", 0, '<Day,2>/<Month,2>/<Year>'))
                    {

                    }
                    column(Shipment_Date; Format("Sales Shipment Header"."Shipment Date", 0, '<Day,2>/<Month,2>/<Year>'))
                    {

                    }
                    column(ExternalDocumentNo; "Sales Shipment Header"."External Document No.")
                    {
                    }
                    column(RecCompInfoPicture; RecCompInfo.Picture)
                    {

                    }
                    column(sales_person_name; salesperson_name)
                    {

                    }
                    column(Invoice_No; "Sales Shipment Header"."Applies-to Doc. No.")
                    {

                    }
                    column(VarCompInfo1; VarCompInfo[1])
                    {

                    }
                    column(VarCompInfo2; VarCompInfo[2])
                    {

                    }
                    column(VarCompInfo3; VarCompInfo[3])
                    {

                    }
                    column(VarCompInfo4; VarCompInfo[4])
                    {

                    }
                    column(VarCompInfo5; VarCompInfo[5])
                    {

                    }
                    column(VarCompInfo6; VarCompInfo[6])
                    {

                    }
                    column(VarCompInfo7; VarCompInfo[7])
                    {

                    }
                    column(VarCompInfo8; VarCompInfo[8])
                    {

                    }
                    column(VarCompInfo9; VarCompInfo[9])
                    {

                    }
                    column(VarCompInfo10; VarCompInfo[10])
                    {

                    }
                    column(VarCompInfo11; VarCompInfo[11])
                    {

                    }
                    column(VarSellTo1; VarSellTo[1])
                    {

                    }
                    column(VarSellTo2; VarSellTo[2])
                    {

                    }
                    column(VarSellTo3; VarSellTo[3])
                    {

                    }
                    column(VarSellTo4; VarSellTo[4])
                    {

                    }
                    column(VarSellTo5; VarSellTo[5])
                    {

                    }
                    column(VarSellTo6; VarSellTo[6])
                    {

                    }
                    column(VarSellTo7; VarSellTo[7])
                    {

                    }
                    column(VarSellTo8; VarSellTo[8])
                    {

                    }
                    column(VarSellTo9; VarSellTo[9])
                    {

                    }
                    column(VarSellTo10; VarSellTo[10])
                    {

                    }
                    column(VarShipTo1; VarShipTo[1])
                    {

                    }
                    column(VarShipTo2; VarShipTo[2])
                    {

                    }
                    column(VarShipTo3; VarShipTo[3])
                    {

                    }
                    column(VarShipTo4; VarShipTo[4])
                    {

                    }
                    column(VarShipTo5; VarShipTo[5])
                    {

                    }
                    column(VarShipTo6; VarShipTo[6])
                    {

                    }
                    column(VarShipTo7; VarShipTo[7])
                    {

                    }
                    column(VarShipTo8; VarShipTo[8])
                    {

                    }
                    column(VarShipTo9; VarShipTo[9])
                    {

                    }
                    column(VarShipTo10; VarShipTo[10])
                    {

                    }
                    column(WorkDesCheck; WorkDesCheck)
                    {

                    }
                    column(WorkDescription; GetWorkDescription)
                    {

                    }
                    dataitem("Sales Shipment Line"; "Sales Shipment Line")
                    {
                        DataItemLinkReference = "Sales Shipment Header";
                        DataItemLink = "Document No." = FIELD("No.");
                        DataItemTableView = SORTING("Document No.", "Line No.");
                        column(SalesLine_No; "No.")
                        {

                        }
                        column(Type; Type)
                        {

                        }
                        column(Description; Description + ' ' + ' ' + "Description 2")
                        {

                        }
                        column(Quantity; Quantity)
                        {

                        }
                        column(UnitofMeasure; "Unit of Measure Code")
                        {

                        }
                        column(Unit_Cost; "Unit Cost")
                        {

                        }
                        column(Unit_Price; "Unit Price")
                        {

                        }
                        column(SeqNo; SeqNo)
                        {

                        }
                        column(weight; weight)
                        {

                        }
                        column(TotalWeight; TotalWeight) { }
                        trigger OnAfterGetRecord()
                        begin
                            if (Type = type::Item) and (Quantity = 0) then
                                CurrReport.Skip();
                            if (Type <> Type::" ") then
                                SeqNo += 1;

                            ItemUOM.Reset();
                            ItemUOM.SetRange("Item No.", "No.");
                            ItemUOM.SetRange(Code, "Unit of Measure Code");
                            if ItemUOM.FindFirst() then begin
                                weight := ItemUOM."Qty. per Unit of Measure";
                                TotalWeight := ItemUOM."Qty. per Unit of Measure" * Quantity;
                            end;
                        end;
                    }
                }
                trigger OnAfterGetRecord()
                begin
                    if Number > 1 then begin
                        CopyText := FormatDocument.GetCOPYText();
                        OutputNo := OutputNo + 1;
                    end;
                    SeqNo := 0;
                end;

                trigger OnPreDataItem()
                begin
                    NoOfLoops := Abs(NoOfCopies) + 1;
                    CopyText := '';
                    SetRange(Number, 1, NoOfLoops);
                    OutputNo := 1;
                end;
            }
            trigger OnAfterGetRecord()
            begin
                Clear(VarShipTo);
                Clear(VarSellTo);
                Clear(VarCompInfo);

                ItemUOM.Reset();
                RecCompInfo.Get;
                RecCompInfo.CalcFields(Picture);
                customer.Reset();
                VarSellTo[1] := "Sell-to Customer No.";
                VarSellTo[2] := "Sell-to Customer Name";
                VarSellTo[3] := "Sell-to Address";
                VarSellTo[4] := "Sell-to Address 2";
                RecCountry.Reset;
                if "Sell-to Post Code" <> '' then begin
                    if RecCountry.Get("Sell-to Country/Region Code") then
                        VarSellTo[5] := RecCountry.Name + ' ' + "Sell-to Post Code";
                end;
                CompressArray(VarSellTo);
                if Customer.Get("Sell-to Customer No.") then begin
                    VarSellTo[6] := Customer."Phone No.";
                    VarSellTo[7] := Customer."Fax No.";
                end;
                VarShipTo[1] := "Sell-to Customer No.";
                VarShipTo[2] := "Sell-to Customer Name";
                VarShipTo[3] := "Sell-to Address";
                VarShipTo[4] := "Sell-to Address 2";
                RecCountry.Reset;
                if "Sell-to Post Code" <> '' then begin
                    if RecCountry.Get("Sell-to Country/Region Code") then
                        VarShipTo[5] := RecCountry.Name + ' ' + "Sell-to Post Code";
                end;
                CompressArray(VarSellTo);
                if Customer.Get("Sell-to Customer No.") then begin
                    VarShipTo[6] := Customer."Phone No.";
                    VarShipTo[7] := Customer."Fax No.";
                end;

                VarCompInfo[1] := RecCompInfo.Name;
                VarCompInfo[2] := RecCompInfo.Address;
                VarCompInfo[3] := RecCompInfo."Address 2";
                VarCompInfo[4] := RecCompInfo."Fax No.";
                VarCompInfo[5] := RecCompInfo."E-Mail";
                VarCompInfo[6] := RecCompInfo."Home Page";
                VarCompInfo[7] := RecCompInfo."VAT Registration No.";
                VarCompInfo[8] := RecCompInfo."Bank Name";
                VarCompInfo[9] := RecCompInfo."SWIFT Code";
                VarCompInfo[10] := RecCompInfo."Bank Account No.";
                VarCompInfo[11] := RecCompInfo."Phone No.";
                if PaymentTermsDesc.Get("Payment Terms Code") then
                    PaymentTerms := PaymentTermsDesc.Description;
                if salesperson.Get("Salesperson Code") then
                    salesperson_name := salesperson.Name;
            end;
        }
    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    field(NoOfCopies; NoOfCopies)
                    {
                        ApplicationArea = All;
                    }
                }
            }
        }
        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    rendering
    {
        layout("Delivery Order")
        {
            Type = RDLC;
            LayoutFile = './Himetal-ReportLayout/50217.ReportLayout.DeliveryOrder.rdl';
        }
    }

    var
        Salesinvheader: Record "Sales Invoice Header";
        LCY: Code[20];
        SeqNo: Integer;
        SubTotal: Decimal;
        SubTotalSGD: Decimal;
        Gst: Decimal;
        ItemUOM: Record "Item Unit of Measure";
        weight: Decimal;
        TotalWeight: Decimal;
        GstSGD: Decimal;
        GrandTotal: Decimal;
        GrandTotalSGD: Decimal;
        SubTotalLab: Label 'Sub-Total';
        GstLbl: Label '% GST';
        GrandTotalLbl: Label 'Grand Total';
        GSTRate: Decimal;
        Vendor: Record Vendor;
        Currency: Code[10];
        RecGLSetup: Record "General Ledger Setup";
        CurrencyER: Record "Currency Exchange Rate";
        ExchangeRate: Decimal;
        ExchangeRate_Lbl: Label 'Exchange Rate';
        CurrencySGD: Code[20];
        PageLbl: Label 'Page';
        FormatDocument: Codeunit "Format Document";
        customer: Record Customer;
        PaymentTermsDesc: Record "Payment Terms";
        PaymentTerms: Text;
        salesperson: Record "Salesperson/Purchaser";
        salesperson_name: Text;
        temp: Report "Standard Sales - Quote";
        CompanyAddr: array[8] of Text[100];
        VarShipTo: array[10] of Text;
        VarSellTo: array[10] of Text;
        RecCompInfo: Record "Company Information";
        RecCountry: Record "Country/Region";
        VarCompInfo: array[20] of Text;
        CopyText: Text[30];
        OutputNo: Integer;
        NoOfLoops: Integer;
        NoOfCopies: Integer;
        WorkDesCheck: Boolean;

    procedure GetWorkDescription(): Text
    var
        TypeHelper: Codeunit "Type Helper";
        InStream: InStream;
    begin
        "Sales Shipment Header".CalcFields("Sales Shipment Header"."Work Description");
        if "Sales Shipment Header"."Work Description".Length <> 0 then begin
            WorkDesCheck := true;
            "Sales Shipment Header"."Work Description".CreateInStream(InStream, TextEncoding::UTF8);
            exit(TypeHelper.ReadAsTextWithSeparator(InStream, TypeHelper.LFSeparator));
        end;
    end;
}