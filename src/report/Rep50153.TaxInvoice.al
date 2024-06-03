report 50153 "Tax Invoice"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = "Tax Invoice";
    Caption = 'Tax Invoice';
    dataset
    {
        dataitem("Header"; "Sales Invoice Header")
        {
            RequestFilterFields = "No.";
            dataitem(CopyLoop; Integer)
            {
                DataItemTableView = sorting(Number);
                dataitem(PageLoop; Integer)
                {
                    DataItemTableView = sorting(Number) where(Number = const(1));
                    column(OutputNo; OutputNo)
                    {

                    }
                    column(IEC_code; IEC_code) { }
                    column(IEC_code1; IEC_code1) { }
                    column(No; Header."No.")
                    {

                    }
                    column(Nos; Nos)
                    {

                    }
                    column(Your_Reference; Header."Your Reference")
                    {

                    }
                    column(Document_Date; Format(Header."Document Date", 0, '<Day,2>/<Month,2>/<Year>'))
                    {

                    }
                    column(Order_Date; Format(Header."Order Date", 0, '<Day,2>/<Month,2>/<Year>'))
                    {

                    }
                    column(ExternalDocument_No; Header."External Document No.")
                    {

                    }
                    column(CurrencyCode; Header."Currency Code")
                    {

                    }
                    column(RecCompInfoPicture; RecCompInfo.Picture)
                    {

                    }
                    column(RecCompInfoPicture2; RecCompInfo."Picture 2")
                    {

                    }
                    column(RecCompInfoPicture3; RecCompInfo."Picture 3")
                    {

                    }
                    column(RecCompInfoPicture4; RecCompInfo."Picture 4")
                    {

                    }
                    column(RecCompInfo_Picture1; RecCompInfo.Picture1) { }
                    column(RecCompInfoBankName; RecCompInfo."Bank Name")
                    {

                    }
                    column(RecCompInfoBankACNo; RecCompInfo."Bank Account No.")
                    {

                    }
                    column(RecCompInfoSWIFTCode; RecCompInfo."SWIFT Code")
                    {

                    }
                    column(DocTittle; DocTittle)
                    {

                    }
                    column(PaymentDescription; PaymentDescription)
                    {

                    }
                    column(TradeTrems; Header."Trade Terms")
                    {

                    }
                    column(BillTo_No; Header."Bill-to Customer No.")
                    {

                    }
                    column(BillToName; BillTo[1])
                    {

                    }
                    column(BillToAddress; BillTo[2])
                    {

                    }
                    column(BillToAddress2; BillTo[3])
                    {

                    }
                    column(BillToAddress3; BillTo[4])
                    {

                    }
                    column(BillToAddress4; BillTo[5])
                    {

                    }
                    column(BillToCounty_PostCode; BillTo[6])
                    {

                    }
                    column(BillToContact; BillTo[7])
                    {

                    }
                    column(BillTo8; BillTo[8])
                    {

                    }
                    column(BillTo9; BillTo[9])
                    {

                    }
                    column(BillTo10; BillTo[10])
                    {

                    }
                    column(ShipTo1; ShipTo[1])
                    {

                    }
                    column(ShipTo2; ShipTo[2])
                    {

                    }
                    column(ShipTo3; ShipTo[3])
                    {

                    }
                    column(ShipTo4; ShipTo[4])
                    {

                    }
                    column(ShipTo5; ShipTo[5])
                    {

                    }
                    column(ShipTo6; ShipTo[6])
                    {

                    }
                    column(ShipTo7; ShipTo[7])
                    {

                    }
                    column(ShipTo8; ShipTo[8])
                    {

                    }
                    column(ShipTo9; ShipTo[9])
                    {

                    }
                    column(ShipTo10; ShipTo[10])
                    {

                    }
                    column(No_Lbl; No_Lbl)
                    {

                    }
                    column(Date_Lbl; Date_Lbl)
                    { }
                    column(YourReferance_Lbl; YourReferance_Lbl)
                    {

                    }
                    column(LablBillToo; LabBillToNo)
                    {

                    }
                    column(LabOrderDate; OrderDate_Lbl)
                    {

                    }
                    column(LabPoref; Poref_Lbl)
                    {

                    }
                    column(Labportofloding; portofloding_Lbl)
                    {

                    }
                    column(LabCustomeSignature; LabCustomeSignature)
                    {

                    }
                    column(companyName; companyName)
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
                    column(GSTRate; GSTRate)
                    {

                    }
                    column(Currency; Currency)
                    {

                    }
                    column(SubTotalLab; SubTotalLab)
                    {

                    }
                    column(GrandTotalLbl; GrandTotalLbl)
                    {

                    }
                    column(GstLbl; GstLbl)
                    {

                    }
                    column(AmountInWords; Saying[1] + ' ' + Saying[2])
                    {

                    }
                    column(OurRefNo_Lbl; OurRefNo_Lbl)
                    {

                    }
                    column(OurSalesCoNo_Lbl; OurSalesCoNo_Lbl)
                    {

                    }
                    column(LblCurrency; LblCurrency)
                    {

                    }
                    column(LblShipto; LblShipto)
                    {

                    }
                    column(PageLbl; PageLbl)
                    {

                    }
                    column(ExchangeRate; ExchangeRate)
                    {

                    }
                    column(ExchangeRate_Lbl; ExchangeRate_Lbl)
                    {

                    }
                    column(CurrencySGD; CurrencySGD)
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
                    column(CustBankAc1; CustBankAc[1])
                    {

                    }
                    column(CustBankAc2; CustBankAc[2])
                    {

                    }
                    column(CustBankAc3; CustBankAc[3])
                    {

                    }
                    column(CustBankAc4; CustBankAc[4])
                    {

                    }
                    column(CustBankAc5; CustBankAc[5])
                    {

                    }
                    column(CustBankAc6; CustBankAc[6])
                    {

                    }
                    column(CustBankAc7; CustBankAc[7])
                    {

                    }
                    column(CustBankAc8; CustBankAc[8])
                    {

                    }
                    column(BankAccount1; BankAccount[1])
                    {

                    }
                    column(BankAccount2; BankAccount[2])
                    {

                    }
                    column(BankAccount3; BankAccount[3])
                    {

                    }
                    column(BankAccount4; BankAccount[4])
                    {

                    }
                    column(BankAccount5; BankAccount[5])
                    {

                    }
                    column(BankAccount6; BankAccount[6])
                    {

                    }
                    column(BankAccount7; BankAccount[7])
                    {

                    }
                    column(BankAccount8; BankAccount[8])
                    {

                    }
                    column(LCY; LCY)
                    {

                    }
                    column(AuthorisedsignLbl; AuthorisedsignLbl)
                    {

                    }
                    column(AuthorisedSignature; AuthorisedSignature)
                    {

                    }
                    column(ProformaInvoice; ProformaInvoice)
                    { }
                    column(TaxInvoice; TaxInvoice)
                    {

                    }
                    dataitem("Sales Invoice Line"; "Sales Invoice Line")
                    {
                        DataItemLink = "Document No." = FIELD("No.");
                        DataItemLinkReference = "Header";
                        column(No_; "No.")
                        {

                        }
                        column(Description; Description)
                        {

                        }
                        column(Quantity; Quantity)
                        {

                        }
                        column(Unit_of_Measure; "Unit of Measure Code")
                        {

                        }
                        column(SeqNo; SeqNo)
                        {

                        }
                        column(Unit_Cost; "Unit Cost")
                        {

                        }
                        column(Line_Amount; "Line Amount")
                        {

                        }
                        trigger OnAfterGetRecord()
                        begin
                            if (Type <> Type::" ") then begin
                                SeqNo += 1;
                                SeqNo := SeqNoempty + SeqNo;
                            end
                            else begin
                                if (Type = Type::" ") then begin
                                    SeqNoempty := SeqNo;
                                    Clear(SeqNo);
                                end
                            end;
                        end;
                    }
                }
                trigger OnAfterGetRecord()
                begin
                    if Number > 1 then begin
                        CopyText := FormatDocument.GetCOPYText();
                        OutputNo += 1;
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
            var
                proforma: Record "Sales Header";
                Invoice: Record "Sales Invoice Header";
                RecPaymentTerm: Record "Payment Terms";
            begin
                RecCompInfo.Get();
                RecCompInfo.CalcFields(Picture);
                RecCompInfo.CalcFields(Picture1);
                companyName := RecCompInfo.Name;
                if CommercialInvoice then
                    DocTittle := 'COMMERCIAL INVOICE'
                else
                    if DebitNote then
                        DocTittle := 'DEBIT NOTE'
                    else
                        if ProvisionalInvoice then
                            DocTittle := 'PROVISIONAL INVOICE'
                        else
                            if ProformaInvoice then
                                DocTittle := 'PROFORMA INVOICE'
                            else
                                if FinalInvoice then
                                    DocTittle := 'FINAL INVOICE'
                                else
                                    if SampleInvoice then
                                        DocTittle := 'SAMPLE INVOICE'
                                    else
                                        if TaxInvoice then
                                            DocTittle := 'TAX INVOICE'
                                        else
                                            DocTittle := 'TAX INVOICE';
                Invoice.get("No.");
                if ProformaInvoice = true then
                    Nos := Invoice."Order No."
                else
                    Nos := proforma."No.";

                Customer.Reset();
                if Customer.get(Header."Sell-to Customer No.") then
                    IEC_code := Customer."IEC Code";
                Customer.Reset();
                if Customer.get(Header."Bill-to Customer No.") then
                    IEC_code1 := Customer."IEC Code";

                BillTo[1] := "Bill-to Name";
                BillTo[2] := "Bill-to Address";
                BillTo[3] := "Bill-to Address 2";
                BillTo[4] := "Bill-to Address 3";
                BillTo[5] := "Bill-to Address 4";
                RecCountry.Reset;
                if "Sell-to Post Code" <> '' then begin
                    if RecCountry.Get("Bill-to Country/Region Code") then
                        BillTo[6] := RecCountry.Name + ' ' + "Bill-to Post Code";
                end;
                BillTo[7] := "Bill-to Contact";
                BillTo[8] := 'IEC Code: ' + IEC_code;
                CompressArray(BillTo);

                ShipTo[1] := "Ship-to Name";
                ShipTo[2] := "Ship-to Address";
                ShipTo[3] := "Ship-to Address 2";
                ShipTo[4] := "Bill-to Address 3";
                ShipTo[5] := "Bill-to Address 4";

                RecCountry.Reset;
                if "Sell-to Post Code" <> '' then begin
                    if RecCountry.Get("Ship-to Country/Region Code") then
                        ShipTo[6] := RecCountry.Name + ' ' + "Ship-to Post Code";
                end;


                ShipTo[7] := "Ship-to Contact";
                ShipTo[9] := 'IEC Code: ' + IEC_code1;
                CompressArray(ShipTo);

                ShipTo[10] := "Bill-to Customer No.";
                if RecPaymentTerm.Get("Payment Terms Code") then
                    PaymentDescription := RecPaymentTerm.Description;

                CalcFields("Amount Including VAT", Amount);
                SubTotal := Amount;
                Gst := "Amount Including VAT" - Amount;
                GrandTotal := "Amount Including VAT";
                SalesInvoiceLine.SetRange("Document No.", "No.");
                SalesInvoiceLine.SetFilter("VAT %", '>%1', 0);
                if SalesInvoiceLine.FindFirst() then
                    GSTRate := SalesInvoiceLine."VAT %";
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

                BankAcc.Reset();
                BankAcc.SetRange("No.", "Company Bank Account Code");
                if BankAcc.FindFirst() then begin
                    BankAccount[1] := BankAcc.Name;
                    BankAccount[2] := BankAcc.Address + BankAcc."Address 2" + BankAcc.County + BankAcc."Post Code";
                    BankAccount[3] := BankAcc."Bank Account No.";
                    BankAccount[4] := BankAcc."SWIFT Code";
                    BankAccount[5] := 'Esun International Pte Ltd';
                    BankAccount[6] := BankAcc."Intermediary Bank";
                    BankAccount[7] := BankAcc."Intermediary Bank Swift Code";
                    BankAccount[8] := BankAcc."Pay Now";
                end;

                InitTextVariable;
                FormatNoText(Saying, Abs(GrandTotal), '');


            end;
        }
    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                field(NoOfCopies; NoOfCopies)
                {
                    Caption = 'No Of Copies';
                    ApplicationArea = All;
                    Visible = true;
                }
                group(Option)
                {
                    field(logInteraction; logInteraction)
                    {
                        Caption = 'log Interaction';
                        ApplicationArea = all;
                        Visible = true;
                    }
                    field(ProvisionalInvoice; ProvisionalInvoice)
                    {
                        Caption = 'Provisional Invoice';
                        ApplicationArea = all;
                        Visible = true;
                    }
                    field(FinalInvoice; FinalInvoice)
                    {
                        Caption = 'Final Invoice';
                        ApplicationArea = all;
                        Visible = true;
                    }
                    field(CommercialInvoice; CommercialInvoice)
                    {
                        Caption = 'Commercial Invoice';
                        ApplicationArea = all;
                        Visible = true;
                    }
                    field(TaxInvoice; TaxInvoice)
                    {
                        Caption = 'Tax Invoice';
                        ApplicationArea = all;
                        Visible = true;
                    }
                    field(DebitNote; DebitNote)
                    {
                        Caption = 'Debit Note';
                        ApplicationArea = all;
                        Visible = true;
                    }
                    field(SampleInvoice; SampleInvoice)
                    {
                        Caption = 'Sample Invoice';
                        ApplicationArea = all;
                        Visible = true;
                    }
                    field(AuthorisedSignature; AuthorisedSignature)
                    {
                        Caption = 'Authorised Signature';
                        ApplicationArea = all;
                    }
                }
            }
        }
        actions
        {

        }
    }
    rendering
    {
        layout("Tax Invoice")
        {
            Type = RDLC;
            LayoutFile = './ReportLayout/50153.ReportLayout.TaxInvoice.rdl';
        }
    }
    trigger OnInitReport()
    begin
        AuthorisedSignature := true;
        CommercialInvoice := true;
    end;

    var
        IEC_code: Code[20];
        IEC_code1: Code[20];

        LCY: Code[20];
        PaymentDescription: Text;
        myInt: Integer;
        SeqNoempty: Decimal;
        RecCountry: Record "Country/Region";
        RecGLSetup: Record "General Ledger Setup";
        SalesInvoiceLine: Record "Sales Invoice Line";
        Customer: Record Customer;
        RecCompInfo: Record "Company Information";
        DocTittle: Text[100];
        logInteraction: Boolean;
        ProvisionalInvoice: Boolean;
        FinalInvoice: Boolean;
        CommercialInvoice: Boolean;
        TaxInvoice: Boolean;
        DebitNote: Boolean;
        SampleInvoice: Boolean;
        ProformaInvoice: Boolean;
        companyName: Text;
        ProformaNo: Code[20];
        OutputNo: Integer;
        No: Code[20];
        Nos: Code[20];
        Document_Date: Date;
        Order_Date: Date;
        Your_Reference: Text[35];
        ExternalDocument_No: Code[35];
        Ex_No: Code[35];
        SeqNo: Integer;
        NoOfCopies: Integer;
        NoOfLoops: Integer;
        CopyText: Text[30];
        BillTo: array[10] of Text;
        ShipTo: array[10] of Text;
        LabBillToNo: Label 'Bill To';
        No_Lbl: Label 'Invoice No.';
        Date_Lbl: Label 'Date';
        YourReferance_Lbl: Label 'Your Ref No';
        OrderDate_Lbl: Label 'Order Date';
        Poref_Lbl: Label 'Po REF.';
        portofloding_Lbl: Label 'Port Of Loading';
        LabCustomeSignature: Label 'CUSTOMERS STAMP & SIGNATURE';
        OurRefNo_Lbl: Label 'Our Ref No.';
        OurSalesCoNo_Lbl: Label 'Our Sales Contract No.';
        SubTotal: Decimal;
        Gst: Decimal;
        GrandTotal: Decimal;
        GSTRate: Decimal;
        Currency: Code[10];
        LblCurrency: Label 'Currency';
        SubTotalLab: Label 'Sub-Total';
        GstLbl: Label '% GST';
        GrandTotalLbl: Label 'Grand Total';
        NoText: array[2] of Text[80];
        RepCheck: Report Check;
        AmountInWords: Text;
        Amounts: Decimal;
        LblShipto: Label 'Ship To';
        AuthorisedsignLbl: Label 'Authorised Signature';
        AuthorisedSignature: Boolean;
        SubTotalSGD: Decimal;
        GstSGD: Decimal;
        GrandTotalSGD: Decimal;
        CurrencyER: Record "Currency Exchange Rate";
        ExchangeRate: Decimal;
        ExchangeRate_Lbl: Label 'Exchange Rate';
        CurrencySGD: Code[20];
        PageLbl: Label 'Page';
        CustomerBankAc: Record "Customer Bank Account";
        CustBankAc: array[10] of Text;
        BankAccount: array[10] of Text;
        BankAcc: Record "Bank Account";
        FormatDocument: Codeunit "Format Document";
        Text004: Label 'TAX INVOICE %1', Comment = '%1 = Document No.';
        "------Var Saying s--------": Integer;
        Saying: array[2] of Text;
        CentText: Text[30];
        OnesText: array[20] of Text[30];
        TensText: array[10] of Text[30];
        ExponentText: array[5] of Text[30];
        "------Loop Structure--------": Integer;
        Text026: Label 'ZERO';
        Text027: Label 'HUNDRED';
        Text028: Label 'AND';
        Text029: Label '%1 results in a written number that is too long.';
        Text032: Label 'ONE';
        Text033: Label 'TWO';
        Text034: Label 'THREE';
        Text035: Label 'FOUR';
        Text036: Label 'FIVE';
        Text037: Label 'SIX';
        Text038: Label 'SEVEN';
        Text039: Label 'EIGHT';
        Text040: Label 'NINE';
        Text041: Label 'TEN';
        Text042: Label 'ELEVEN';
        Text043: Label 'TWELVE';
        Text044: Label 'THIRTEEN';
        Text045: Label 'FOURTEEN';
        Text046: Label 'FIFTEEN';
        Text047: Label 'SIXTEEN';
        Text048: Label 'SEVENTEEN';
        Text049: Label 'EIGHTEEN';
        Text050: Label 'NINETEEN';
        Text051: Label 'TWENTY';
        Text052: Label 'THIRTY';
        Text053: Label 'FORTY';
        Text054: Label 'FIFTY';
        Text055: Label 'SIXTY';
        Text056: Label 'SEVENTY';
        Text057: Label 'EIGHTY';
        Text058: Label 'NINETY';
        Text059: Label 'THOUSAND';
        Text060: Label 'MILLION';
        Text061: Label 'BILLION';

    local procedure FormatNoText(var NoText: array[2] of Text[80]; No: Decimal; CurrencyCode: Code[10])
    var
        PrintExponent: Boolean;
        Ones: Integer;
        Tens: Integer;
        Hundreds: Integer;
        Exponent: Integer;
        NoTextIndex: Integer;
        RecGLSet: Record "General Ledger Setup";
    begin
        Clear(NoText);
        NoTextIndex := 1;
        NoText[1] := '';

        if No < 1 then
            AddToNoText(NoText, NoTextIndex, PrintExponent, Text026)
        else begin
            for Exponent := 4 downto 1 do begin
                PrintExponent := false;
                Ones := No div Power(1000, Exponent - 1);
                Hundreds := Ones div 100;
                Tens := (Ones mod 100) div 10;
                Ones := Ones mod 10;
                if Hundreds > 0 then begin
                    AddToNoText(NoText, NoTextIndex, PrintExponent, OnesText[Hundreds]);
                    AddToNoText(NoText, NoTextIndex, PrintExponent, Text027);
                end;
                if Tens >= 2 then begin
                    AddToNoText(NoText, NoTextIndex, PrintExponent, TensText[Tens]);
                    if Ones > 0 then
                        AddToNoText(NoText, NoTextIndex, PrintExponent, OnesText[Ones]);
                end else
                    if (Tens * 10 + Ones) > 0 then
                        AddToNoText(NoText, NoTextIndex, PrintExponent, OnesText[Tens * 10 + Ones]);
                if PrintExponent and (Exponent > 1) then
                    AddToNoText(NoText, NoTextIndex, PrintExponent, ExponentText[Exponent]);
                No := No - (Hundreds * 100 + Tens * 10 + Ones) * Power(1000, Exponent - 1);

                if (No * 100) = 0 then CentText := 'ZERO ';
                if (No * 100) = 1 then CentText := 'ONE CENT ';
                if (No * 100) = 2 then CentText := 'TWO ';
                if (No * 100) = 3 then CentText := 'THREE ';
                if (No * 100) = 4 then CentText := 'FOUR ';
                if (No * 100) = 5 then CentText := 'FIVE ';
                if (No * 100) = 6 then CentText := 'SIX ';
                if (No * 100) = 7 then CentText := 'SEVEN ';
                if (No * 100) = 8 then CentText := 'EIGHT ';
                if (No * 100) = 9 then CentText := 'NINE ';
                if (No * 100) = 10 then CentText := 'TEN ';

                if (No * 100) = 11 then CentText := 'ELEVEN ';
                if (No * 100) = 12 then CentText := 'TWELVE ';
                if (No * 100) = 13 then CentText := 'THIRTEEN ';
                if (No * 100) = 14 then CentText := 'FOURTEEN ';
                if (No * 100) = 15 then CentText := 'FIFTEEN ';
                if (No * 100) = 16 then CentText := 'SIXTEEN ';
                if (No * 100) = 17 then CentText := 'SEVENTEEN ';
                if (No * 100) = 18 then CentText := 'EIGHTTEEN ';
                if (No * 100) = 19 then CentText := 'NINETEEN ';
                if (No * 100) = 20 then CentText := 'TWENTY ';

                if (No * 100) = 21 then CentText := 'TWENTY ONE ';
                if (No * 100) = 22 then CentText := 'TWENTY TWO ';
                if (No * 100) = 23 then CentText := 'TWENTY THREE ';
                if (No * 100) = 24 then CentText := 'TWENTY FOUR ';
                if (No * 100) = 25 then CentText := 'TWENTY FIVE ';
                if (No * 100) = 26 then CentText := 'TWENTY SIX ';
                if (No * 100) = 27 then CentText := 'TWENTY SEVEN ';
                if (No * 100) = 28 then CentText := 'TWENTY EIGHT ';
                if (No * 100) = 29 then CentText := 'TWENTY NINE ';
                if (No * 100) = 30 then CentText := 'THIRTY ';

                if (No * 100) = 31 then CentText := 'THIRTY ONE ';
                if (No * 100) = 32 then CentText := 'THIRTY TWO ';
                if (No * 100) = 33 then CentText := 'THIRTY THREE ';
                if (No * 100) = 34 then CentText := 'THIRTY FOUR ';
                if (No * 100) = 35 then CentText := 'THIRTY FIVE ';
                if (No * 100) = 36 then CentText := 'THIRTY SIX ';
                if (No * 100) = 37 then CentText := 'THIRTY SEVEN ';
                if (No * 100) = 38 then CentText := 'THIRTY EIGHT ';
                if (No * 100) = 39 then CentText := 'THIRTY NINE ';
                if (No * 100) = 40 then CentText := 'FOURTY ';

                if (No * 100) = 41 then CentText := 'FORTY ONE ';
                if (No * 100) = 42 then CentText := 'FORTY TWO ';
                if (No * 100) = 43 then CentText := 'FORTY THREE ';
                if (No * 100) = 44 then CentText := 'FORTY FOUR ';
                if (No * 100) = 45 then CentText := 'FORTY FIVE ';
                if (No * 100) = 46 then CentText := 'FORTY SIX ';
                if (No * 100) = 47 then CentText := 'FORTY SEVEN ';
                if (No * 100) = 48 then CentText := 'FORTY EIGHT ';
                if (No * 100) = 49 then CentText := 'FORTY NINE ';
                if (No * 100) = 50 then CentText := 'FIFTY ';

                if (No * 100) = 51 then CentText := 'FIFTY ONE ';
                if (No * 100) = 52 then CentText := 'FIFTY TWO ';
                if (No * 100) = 53 then CentText := 'FIFTY THREE ';
                if (No * 100) = 54 then CentText := 'FIFTY FOUR ';
                if (No * 100) = 55 then CentText := 'FIFTY FIVE ';
                if (No * 100) = 56 then CentText := 'FIFTY SIX ';
                if (No * 100) = 57 then CentText := 'FIFTY SEVEN ';
                if (No * 100) = 58 then CentText := 'FIFTY EIGHT ';
                if (No * 100) = 59 then CentText := 'FIFTY NINE ';
                if (No * 100) = 60 then CentText := 'SIXTY ';

                if (No * 100) = 61 then CentText := 'SIXTY ONE ';
                if (No * 100) = 62 then CentText := 'SIXTY TWO ';
                if (No * 100) = 63 then CentText := 'SIXTY THREE ';
                if (No * 100) = 64 then CentText := 'SIXTY FOUR ';
                if (No * 100) = 65 then CentText := 'SIXTY FIVE ';
                if (No * 100) = 66 then CentText := 'SIXTY SIX ';
                if (No * 100) = 67 then CentText := 'SIXTY SEVEN ';
                if (No * 100) = 68 then CentText := 'SIXTY EIGHT ';
                if (No * 100) = 69 then CentText := 'SIXTY NINE ';
                if (No * 100) = 70 then CentText := 'SEVENTY ';

                if (No * 100) = 71 then CentText := 'SEVENTY ONE ';
                if (No * 100) = 72 then CentText := 'SEVENTY TWO ';
                if (No * 100) = 73 then CentText := 'SEVENTY THREE ';
                if (No * 100) = 74 then CentText := 'SEVENTY FOUR ';
                if (No * 100) = 75 then CentText := 'SEVENTY FIVE ';
                if (No * 100) = 76 then CentText := 'SEVENTY SIX ';
                if (No * 100) = 77 then CentText := 'SEVENTY SEVEN ';
                if (No * 100) = 78 then CentText := 'SEVENTY EIGHT ';
                if (No * 100) = 79 then CentText := 'SEVENTY NINE ';
                if (No * 100) = 80 then CentText := 'EIGHTY ';

                if (No * 100) = 81 then CentText := 'EIGHTY ONE ';
                if (No * 100) = 82 then CentText := 'EIGHTY TWO ';
                if (No * 100) = 83 then CentText := 'EIGHTY THREE ';
                if (No * 100) = 84 then CentText := 'EIGHTY FOUR ';
                if (No * 100) = 85 then CentText := 'EIGHTY FIVE ';
                if (No * 100) = 86 then CentText := 'EIGHTY SIX ';
                if (No * 100) = 87 then CentText := 'EIGHTY SEVEN ';
                if (No * 100) = 88 then CentText := 'EIGHTY EIGHT ';
                if (No * 100) = 89 then CentText := 'EIGHTY NINE ';
                if (No * 100) = 90 then CentText := 'NINETY ';

                if (No * 100) = 91 then CentText := 'NINETY ONE ';
                if (No * 100) = 92 then CentText := 'NINETY TWO ';
                if (No * 100) = 93 then CentText := 'NINETY THREE ';
                if (No * 100) = 94 then CentText := 'NINETY FOUR ';
                if (No * 100) = 95 then CentText := 'NINETY FIVE ';
                if (No * 100) = 96 then CentText := 'NINETY SIX ';
                if (No * 100) = 97 then CentText := 'NINETY SEVEN ';
                if (No * 100) = 98 then CentText := 'NINETY EIGHT ';
                if (No * 100) = 99 then CentText := 'NINETY NINE ';
            end;
        end;

        if (No * 100) = 0 then
            AddToNoText(NoText, NoTextIndex, PrintExponent, 'AND')
        else
            AddToNoText(NoText, NoTextIndex, PrintExponent, Text028);

        AddToNoText(NoText, NoTextIndex, PrintExponent, 'CENTS ' + CentText + 'ONLY');

        if CurrencyCode <> '' then
            AddToNoText(NoText, NoTextIndex, PrintExponent, CurrencyCode);
    end;

    local procedure AddToNoText(var NoText: array[2] of Text[80]; var NoTextIndex: Integer; var PrintExponent: Boolean; AddText: Text[30])
    begin
        PrintExponent := true;

        while StrLen(NoText[NoTextIndex] + ' ' + AddText) > MaxStrLen(NoText[1]) do begin
            NoTextIndex := NoTextIndex + 1;
            if NoTextIndex > ArrayLen(NoText) then
                Error(Text029, AddText);
        end;

        NoText[NoTextIndex] := DelChr(NoText[NoTextIndex] + ' ' + AddText, '<');
    end;

    local procedure InitTextVariable()
    begin
        OnesText[1] := Text032;
        OnesText[2] := Text033;
        OnesText[3] := Text034;
        OnesText[4] := Text035;
        OnesText[5] := Text036;
        OnesText[6] := Text037;
        OnesText[7] := Text038;
        OnesText[8] := Text039;
        OnesText[9] := Text040;
        OnesText[10] := Text041;
        OnesText[11] := Text042;
        OnesText[12] := Text043;
        OnesText[13] := Text044;
        OnesText[14] := Text045;
        OnesText[15] := Text046;
        OnesText[16] := Text047;
        OnesText[17] := Text048;
        OnesText[18] := Text049;
        OnesText[19] := Text050;

        TensText[1] := '';
        TensText[2] := Text051;
        TensText[3] := Text052;
        TensText[4] := Text053;
        TensText[5] := Text054;
        TensText[6] := Text055;
        TensText[7] := Text056;
        TensText[8] := Text057;
        TensText[9] := Text058;

        ExponentText[1] := '';
        ExponentText[2] := Text059;
        ExponentText[3] := Text060;
        ExponentText[4] := Text061;
    end;
}