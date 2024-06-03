report 50212 "Himetal-Sales-Quote"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = "Sales-Quote";
    PreviewMode = PrintLayout;
    Caption = 'Himetal-Sales-Quote';
    dataset
    {
        dataitem("Sales Header"; "Sales Header")
        {
            DataItemTableView = SORTING("Document Type", "No.") WHERE("Document Type" = CONST(Quote));
            RequestFilterFields = "No.", "Sell-to Customer No.", "No. Printed";
            RequestFilterHeading = 'Sales Quote';
            dataitem(CopyLoop; "Integer")
            {
                DataItemTableView = sorting(Number);
                dataitem(PageLoop; "Integer")
                {
                    DataItemTableView = sorting(Number) where(Number = const(1));
                    column(Quotation_No; "Sales Header"."No.")
                    {

                    }
                    column(OutputNo; OutputNo)
                    {

                    }
                    column(DocumentDate; Format("Sales Header"."Document Date", 0, '<Day,2>/<Month,2>/<Year>'))
                    {

                    }
                    column(ExternalDocumentNo; "Sales Header"."External Document No.")
                    {
                    }
                    column(PaymentTerms; PaymentTerms)
                    {

                    }
                    column(sales_person_name; salesperson_name)
                    {

                    }
                    column(validate_date; "Sales Header"."Quote Valid Until Date")
                    {

                    }
                    column(RecCompInfoPicture; RecCompInfo.Picture)
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
                    column(salesperson_name; salesperson_name)
                    {

                    }
                    column(Trade_Terms; "Sales Header"."Trade Terms ")
                    {

                    }
                    column(Work_Description; "Sales Header".GetWorkDescription())
                    {

                    }
                    dataitem("Sales Line"; "Sales Line")
                    {
                        DataItemLinkReference = "Sales Header";
                        DataItemLink = "Document No." = FIELD("No.");
                        DataItemTableView = SORTING("Document No.", "Line No.");
                        column(SubTotal; SubTotal)
                        {

                        }
                        column(Gst; Gst)
                        {

                        }
                        column(GrandTotal; GrandTotal)
                        {

                        }
                        column(SubTotalLab; SubTotalLab)
                        {

                        }
                        column(GstLbl; GstLbl)
                        {

                        }
                        column(GrandTotalLbl; GrandTotalLbl)
                        {

                        }
                        column(GSTRate; GSTRate)
                        {

                        }
                        column(Currency; Currency)
                        {

                        }
                        column(CurrencySGD; CurrencySGD)
                        {

                        }
                        column(ExchangeRate; ExchangeRate)
                        {

                        }
                        column(ExchangeRate_Lbl; ExchangeRate_Lbl)
                        {

                        }
                        column(SubTotalSGD; SubTotalSGD)
                        {

                        }
                        column(GstSGD; GstSGD)
                        {

                        }
                        column(GrandTotalSGD; GrandTotalSGD)
                        {

                        }
                        column(CopyText; CopyText)
                        {

                        }
                        column(PageLbl; PageLbl)
                        {

                        }
                        column(LCY; LCY)
                        {

                        }
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
                        column(LineAmount; "Line Amount")
                        {

                        }
                        column(SeqNo; SeqNo)
                        {

                        }
                        column(Exstock_indent; "Exstock/indent") { }


                        trigger OnAfterGetRecord()
                        begin
                            if (Type = type::Item) and (Quantity = 0) then
                                CurrReport.Skip();
                            if(Type <> Type::" ") then
                                SeqNo += 1
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
                Clear(SubTotal);
                Clear(Gst);
                Clear(GrandTotal);

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
                VarShipTo[2] := "Ship-to Name";
                VarShipTo[3] := "Ship-to Address";
                VarShipTo[4] := "Ship-to Address 2";
                RecCountry.Reset;
                if "Ship-to Post Code" <> '' then begin
                    if RecCountry.Get("Ship-to Country/Region Code") then
                        VarShipTo[5] := RecCountry.Name + ' ' + "Ship-to Post Code";
                end;
                CompressArray(VarShipTo);
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

                CalcFields("Amount Including VAT", Amount);
                SubTotal := Amount;
                Gst := "Amount Including VAT" - Amount;
                GrandTotal := "Amount Including VAT";

                Line.Reset();
                Line.SetRange("Document Type", "Document Type");
                Line.SetFilter("VAT %", '>%1', 0);
                if Line.FindFirst() then
                    GSTRate := Line."VAT %";

                RecGLSetup.Get();
                if "Currency Code" <> '' then
                    Currency := '(' + "Currency Code" + ')'
                else
                    Currency := '(' + RecGLSetup."LCY Code" + ')';
                if "Currency Code" <> '' then
                    LCY := "Currency Code"
                else
                    LCY := RecGLSetup."LCY Code";

                CurrencySGD := '(' + RecGLSetup."LCY Code" + ')';
                CurrencyER.SetRange("Currency Code", "Currency Code");
                if CurrencyER.FindLast() then
                    ExchangeRate := CurrencyER."Relational Exch. Rate Amount";
                SubTotalSGD := SubTotal * ExchangeRate;
                GstSGD := Gst * ExchangeRate;
                GrandTotalSGD := GrandTotal * ExchangeRate;
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
        layout("Sales-Quote")
        {
            Type = RDLC;
            LayoutFile = './Himetal-ReportLayout/50212.ReportLayout.Sales-Quote.rdl';
        }
    }

    var
        LCY: Code[20];
        SeqNo: Integer;
        SubTotal: Decimal;
        SubTotalSGD: Decimal;
        Gst: Decimal;
        GstSGD: Decimal;
        GrandTotal: Decimal;
        GrandTotalSGD: Decimal;
        SubTotalLab: Label 'Sub-Total';
        GstLbl: Label '% GST';
        GrandTotalLbl: Label 'Grand Total';
        Line: Record "Sales Line";
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
}