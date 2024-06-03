report 50215 "Himetal-Credit Memo"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = "Credit Memo";
    PreviewMode = PrintLayout;
    dataset
    {
        dataitem("Sales Cr.Memo Header"; "Sales Cr.Memo Header")
        {
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "No.", "Sell-to Customer No.", "No. Printed";
            dataitem(CopyLoop; "Integer")
            {
                DataItemTableView = sorting(Number);
                dataitem(PageLoop; "Integer")
                {
                    DataItemTableView = sorting(Number) where(Number = const(1));
                    column(Posted_salesCreditMemo_No; "Sales Cr.Memo Header"."No.")
                    {

                    }
                    column(DocumentNo; "Sales Cr.Memo Header"."Document No.") { }
                    column(OutputNo; OutputNo)
                    {

                    }
                    column(DocumentDate; Format("Sales Cr.Memo Header"."Document Date", 0, '<Day,2>/<Month,2>/<Year>'))
                    {

                    }
                    column(ExternalDocumentNo; "Sales Cr.Memo Header"."External Document No.")
                    {
                    }
                    column(RecCompInfoPicture; RecCompInfo.Picture)
                    {

                    }
                    column(sales_person_name; salesperson_name)
                    {

                    }
                    column(Invoice_No; "Sales Cr.Memo Header"."Applies-to Doc. No.")
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
                    column(VarBillTo1; VarBillTo[1])
                    {

                    }
                    column(VarBillTo2; VarBillTo[2])
                    {

                    }
                    column(VarBillTo3; VarBillTo[3])
                    {

                    }
                    column(VarBillTo4; VarBillTo[4])
                    {

                    }
                    column(VarBillTo5; VarBillTo[5])
                    {

                    }
                    column(VarBillTo6; VarBillTo[6])
                    {

                    }
                    column(VarBillTo7; VarBillTo[7])
                    {

                    }
                    column(VarBillTo8; VarBillTo[8])
                    {

                    }
                    column(VarBillTo9; VarBillTo[9])
                    {

                    }
                    column(VarBillTo10; VarBillTo[10])
                    {

                    }
                    column(Work_Description; "Sales Cr.Memo Header".GetWorkDescription())
                    {

                    }
                    dataitem("Sales Cr.Memo Line"; "Sales Cr.Memo Line")
                    {
                        DataItemLinkReference = "Sales Cr.Memo Header";
                        DataItemLink = "Document No." = FIELD("No.");
                        DataItemTableView = SORTING("Document No.", "Line No.");
                        column(SalesLine_No; "No.")
                        {

                        }
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
                        trigger OnAfterGetRecord()
                        begin
                            if (Type = type::"Item") and (Quantity = 0) then
                                CurrReport.Skip();
                            if (Type <> Type::" ") then
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
                Clear(VarBillTo);
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

                VarBillTo[1] := "Bill-to Customer No.";
                VarBillTo[2] := "Bill-to Name";
                VarBillTo[3] := "Bill-to Address";
                VarBillTo[4] := "Bill-to Address 2";
                RecCountry.Reset;
                if "Bill-to Post Code" <> '' then begin
                    if RecCountry.Get("Bill-to Country/Region Code") then
                        VarBillTo[5] := RecCountry.Name + ' ' + "Bill-to Post Code";
                end;
                CompressArray(VarBillTo);
                if Customer.Get("Bill-to Customer No.") then begin
                    VarBillTo[6] := Customer."Phone No.";
                    VarBillTo[7] := Customer."Fax No.";
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
                Line.SetRange("Document No.", "No.");
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

                CurrencyER.Reset();
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
        layout("Credit Memo")
        {
            Type = RDLC;
            LayoutFile = './Himetal-ReportLayout/50215.ReportLayout.CreditMemo.rdl';
        }
    }

    var
        Salesinvheader: Record "Sales Invoice Header";
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
        Line: Record "Sales Cr.Memo Line";
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
        VarBillTo: array[10] of Text;
        VarSellTo: array[10] of Text;
        RecCompInfo: Record "Company Information";
        RecCountry: Record "Country/Region";
        VarCompInfo: array[20] of Text;
        CopyText: Text[30];
        OutputNo: Integer;
        NoOfLoops: Integer;
        NoOfCopies: Integer;
        pag: page 5850;
}