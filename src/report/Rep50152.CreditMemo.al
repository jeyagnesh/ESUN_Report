report 50152 CreditMemo
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = "Credit Memo";
    Caption = 'Credit Memo';
    dataset
    {
        dataitem("Header"; "Sales Cr.Memo Header")
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
                    column(SeqNo; SeqNo)
                    {

                    }
                    column(No; Header."No.")
                    {

                    }
                    column(Your_Reference; Header."Your Reference")
                    {

                    }
                    column(ReturnOrder_No; Header."Return Order No.")
                    {

                    }
                    column(Document_Date; Format(Header."Document Date", 0, '<Day,2>/<Month,2>/<Year>'))
                    {

                    }
                    column(CurrencyCode; Header."Currency Code")
                    {

                    }
                    column(ExternalDocument_No; Header."External Document No.")
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
                    column(DocTittle; StrSubstNo(Text004, CopyText))
                    {

                    }
                    column(SellToNo; Header."Sell-to Customer No.")
                    {

                    }
                    column(SellToName; SellTo[1])
                    {

                    }
                    column(SellToAddress; SellTo[2])
                    {

                    }
                    column(SellToAddress2; SellTo[3])
                    {

                    }
                    column(SellToCounty_PostCode; SellTo[4])
                    {

                    }
                    column(SellToContact; SellTo[5])
                    {

                    }
                    column(SellToPhoneNo; SellTo[6])
                    {

                    }
                    column(SellToFaxNo; SellTo[7])
                    {

                    }
                    column(SellTo8; SellTo[10])
                    {

                    }
                    column(BillToNo; Header."Bill-to Customer No.")
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
                    column(BillToCounty_PostCode; BillTo[4])
                    {

                    }
                    column(BillToContact; BillTo[5])
                    {

                    }
                    column(BillToPhoneNo; BillTo[6])
                    {

                    }
                    column(BillToFaxNo; BillTo[7])
                    {

                    }
                    column(BillTo; BillTo[8])
                    {

                    }
                    column(No_Lbl; No_Lbl)
                    {

                    }
                    column(Date_Lbl; Date_Lbl)
                    { }
                    column(ourReferance_Lbl; ourReferance_Lbl)
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

                    column(PostedNo; PostedNo)
                    {

                    }
                    column(CurrencyLbl; CurrencyLbl)
                    {

                    }
                    column(AuthorisedLbl; AuthorisedLbl)
                    {

                    }
                    column(RcNo; RcNo)
                    {

                    }
                    column(LabSellToNo; LblSellToNo)
                    {

                    }
                    column(LblBillTo; LblBillTo)
                    {

                    }
                    column(LblPostedNo; LblPostedNo)
                    {

                    }
                    column(PageLbl; PageLbl)
                    {

                    }
                    column(LCY; LCY)
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
                    dataitem("Sales CRM Line"; "Sales Cr.Memo Line")
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
                        column(Unit_Price; "Unit Price")
                        {

                        }
                        column(Amount; Amount)
                        {

                        }
                        column(AuthorisedSignature; AuthorisedSignature)
                        {

                        }
                        column(AmountInWords; Saying[1] + ' ' + Saying[2])
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
            begin
                RecCompInfo.Get();
                RecCompInfo.CalcFields(Picture);
                RecCompInfo.CalcFields(Picture1);
                SellTo[1] := "Sell-to Customer Name";
                SellTo[2] := "Sell-to Address";
                SellTo[3] := "Sell-to Address 2";
                RecCountry.Reset;
                if "Sell-to Post Code" <> '' then begin
                    if RecCountry.Get("Sell-to Country/Region Code") then
                        SellTo[4] := RecCountry.Name + ' ' + "Sell-to Post Code";
                end;
                CompressArray(SellTo);
                SellTo[5] := "Sell-to Contact";
                Customer.Reset();
                if Customer.Get("Sell-to Customer No.") then begin
                    SellTo[6] := Customer."Phone No.";
                    SellTo[7] := Customer."Fax No.";

                end;

                BillTo[1] := "Bill-to Name";
                BillTo[2] := "Bill-to Address";
                BillTo[3] := "Bill-to Address 2";
                RecCountry.Reset;
                if "Sell-to Post Code" <> '' then begin
                    if RecCountry.Get("Bill-to Country/Region Code") then
                        SellTo[4] := RecCountry.Name + ' ' + "Bill-to Post Code";
                end;
                CompressArray(BillTo);
                BillTo[5] := "Bill-to Contact";
                Customer.Reset();
                if Customer.Get("Bill-to Customer No.") then begin
                    BillTo[6] := Customer."Phone No.";
                    BillTo[7] := Customer."Fax No.";
                    IEC_code := Customer."IEC Code";
                end;

                CalcFields("Amount Including VAT", Amount);
                SubTotal := Amount;
                Gst := "Amount Including VAT" - Amount;
                GrandTotal := "Amount Including VAT";
                Salescrmemo.SetRange("Document No.", "No.");
                Salescrmemo.SetFilter("VAT %", '>%1', 0);
                if Salescrmemo.FindFirst() then
                    GSTRate := Salescrmemo."VAT %";

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

                RcNo := "Pre-Assigned No.";

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
                field(AuthorisedSignature; AuthorisedSignature)
                {
                    Caption = 'Authorised Signature';
                    ApplicationArea = all;
                }
            }
        }
        actions
        {

        }
    }

    rendering
    {
        layout("Credit Memo")
        {
            Type = RDLC;
            LayoutFile = './ReportLayout/50152.ReportLayout.CreditMemo.rdl';
        }
    }
    trigger OnInitReport()
    begin
        AuthorisedSignature := true;
    end;

    var
        IEC_code: Code[20];
        pge: Page 44;
        LCY: Code[20];
        SeqNoempty: Decimal;
        AuthorisedSignature: Boolean;
        myInt: Integer;
        RecCountry: Record "Country/Region";
        SubTotal: Decimal;
        Gst: Decimal;
        GrandTotal: Decimal;
        GSTRate: Decimal;
        Currency: Code[10];
        Salescrmemo: Record "Sales Cr.Memo Line";
        RecCompInfo: Record "Company Information";
        Customer: Record Customer;
        OutputNo: Integer;
        RcNo: Code[20];
        Document_Date: Date;
        Order_Date: Date;
        Your_Reference: Text[35];
        ExternalDocument_No: Code[35];
        SeqNo: Integer;
        NoOfCopies: Integer;
        NoOfLoops: Integer;
        CopyText: Text[30];
        SellTo: array[10] of Text;
        BillTo: array[10] of Text;
        SubTotalSGD: Decimal;
        GstSGD: Decimal;
        GrandTotalSGD: Decimal;
        CurrencyER: Record "Currency Exchange Rate";
        ExchangeRate: Decimal;
        ExchangeRate_Lbl: Label 'Exchange Rate';
        CurrencySGD: Code[20];
        No_Lbl: Label 'No.';
        PostedNo: Label 'Posted No.';
        Date_Lbl: Label 'Date';
        ourReferance_Lbl: Label 'Our Ref No.';
        CurrencyLbl: Label 'Currency';
        AuthorisedLbl: Label 'Authorised Signature';
        SubTotalLab: Label 'Sub-Total';
        GstLbl: Label '% GST';
        GrandTotalLbl: Label 'Grand Total';
        DocTittle: Label 'Credit Memo';
        NoText: array[2] of Text[80];
        RepCheck: Report Check;
        AmountInWords: Text;
        Amounts: Decimal;
        LblSellToNo: Label 'Sell To';
        LblBillTo: Label 'Bill To';
        LblPostedNo: Label 'Posted No.';
        PageLbl: Label 'Page';
        FormatDocument: Codeunit "Format Document";
        Text004: Label 'CREDIT NOTE %1', Comment = '%1 = Document No.';
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
        RecGLSetup: Record "General Ledger Setup";

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