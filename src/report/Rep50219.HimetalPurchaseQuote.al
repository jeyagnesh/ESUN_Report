report 50219 "HiMetal-PurchaseQuote"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = "Purchase Quote";
    PreviewMode = PrintLayout;
    dataset
    {
        dataitem("Purchase Header"; "Purchase Header")
        {
            RequestFilterFields = "No.";
            DataItemTableView = WHERE("Document Type" = FILTER(Quote));
            dataitem(CopyLoop; "Integer")
            {
                DataItemTableView = SORTING(Number);
                dataitem(PageLoop; "Integer")
                {
                    DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                    column(PurchaseHeader_No; PurchaseOrderNo)
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
                    column(DocumentDate; Format("Purchase Header"."Document Date", 0, '<Day,2>/<Month,2>/<Year>'))
                    {

                    }
                    column(OutputNo; OutputNo)
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
                    column(VarBuyFrom1; VarBuyFrom[1])
                    {

                    }
                    column(VarBuyFrom2; VarBuyFrom[2])
                    {

                    }
                    column(VarBuyFrom3; VarBuyFrom[3])
                    {

                    }
                    column(VarBuyFrom4; VarBuyFrom[4])
                    {

                    }
                    column(VarBuyFrom5; VarBuyFrom[5])
                    {

                    }
                    column(VarBuyFrom6; VarBuyFrom[6])
                    {

                    }
                    column(VarBuyFrom7; VarBuyFrom[7])
                    {

                    }
                    column(VarBuyFrom8; VarBuyFrom[8])
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
                    column(salesperson_name; salesperson_name)
                    {

                    }
                    column(VendorOrder_No; "Purchase Header"."Vendor Order No.")
                    {

                    }
                    column(PaymentTermsText; PaymentTermsText)
                    {

                    }
                    column(ShippingTerms; "Purchase Header".Shipment)
                    {

                    }
                    column(Purchase; "Purchase Header"."Purchaser Code")
                    {

                    }
                    column(SupplierSignatureLbl; SupplierSignatureLbl)
                    {

                    }
                    column(AuthorizedSignatureLbl; AuthorizedSignatureLbl)
                    {

                    }
                    column(Work_Description; "Purchase Header".GetWorkDescription())
                    {

                    }
                    dataitem("Purchase Line"; "Purchase Line")
                    {
                        DataItemLink = "Document No." = FIELD("No."), "Document Type" = FIELD("Document Type");
                        DataItemLinkReference = "Purchase Header";
                        column(PurchaseLine_No; "No.")
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
                        column(Direct_Unit_Cost; "Direct Unit Cost")
                        {

                        }
                        column(LineAmount; "Line Amount")
                        {

                        }
                        column(SeqNo; SeqNo)
                        {

                        }
                        column(AmountInWords; Saying[1] + ' ' + Saying[2])
                        {
                        }
                        column(Type; Type)
                        {

                        }
                        trigger OnAfterGetRecord()
                        begin
                            if (Type = type::Item) and (Quantity = 0) then
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
                    OutputNo := 0;
                end;
            }
            trigger OnAfterGetRecord()
            begin
                Clear(VarBuyFrom);
                Clear(VarPayTo);
                Clear(SubTotal);
                Clear(Gst);
                Clear(GrandTotal);
                Clear(PurchaseOrderNo);
                Clear(VarCompInfo);

                RecCompInfo.Get;
                RecCompInfo.CalcFields(Picture);
                Vendor.Reset();
                VarBuyFrom[1] := "Buy-from Vendor No.";
                VarBuyFrom[2] := "Buy-from Vendor Name";
                VarBuyFrom[3] := "Buy-from Address";
                VarBuyFrom[4] := "Buy-from Address 2";
                RecCountry.Reset;
                if "Buy-from Post Code" <> '' then begin
                    if RecCountry.Get("Buy-from Country/Region Code") then
                        VarBuyFrom[5] := RecCountry.Name + ' ' + "Buy-from Post Code";
                end;
                CompressArray(VarBuyFrom);

                if Vendor.Get("Buy-from Vendor No.") then begin
                    VarBuyFrom[6] := Vendor."Phone No.";
                    VarBuyFrom[7] := Vendor."Fax No.";
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

                PurchaseOrderNo := "No.";
                Clear(PaymentTerms);
                if PaymentTerms.Get("Payment Terms Code") then
                    PaymentTermsText := PaymentTerms.Description;

                CalcFields("Amount Including VAT", Amount);
                SubTotal := Amount;
                Gst := "Amount Including VAT" - Amount;
                GrandTotal := "Amount Including VAT";

                FirstLine.Reset();
                FirstLine.SetRange("Document No.", "No.");
                FirstLine.SetFilter("VAT %", '>%1', 0);
                if FirstLine.FindFirst() then
                    GSTRate := FirstLine."VAT %";

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
                InitTextVariable;
                FormatNoText(Saying, Abs(GrandTotal), '');

                if salesperson.Get("Purchaser Code") then
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
        layout("Purchase Quote")
        {
            Type = RDLC;
            LayoutFile = './Himetal-ReportLayout/50219.ReportLayout.PurchaseQuote.rdl';
        }
    }

    var
        customer: Record Customer;
        SeqNoempty: Decimal;
        salesperson: Record "Salesperson/Purchaser";
        salesperson_name: text;
        company: Record Company;
        PaymentTermsText: Text;
        LCY: Code[20];
        Text004: Label 'PURCHASE QUOTE %1', Comment = '%1 = Document No.';
        PurchaseOrderNo: Code[20];
        RecCompInfo: Record "Company Information";
        RecCountry: Record "Country/Region";
        VarCompInfo: array[20] of Text;
        ReqPDocTittleOpt: Option "Purchase Quote";
        VarDocTittle: Text;
        VarBuyFrom: array[10] of Text;
        VarPayTo: array[10] of Text;
        FormatAddress: Codeunit "Format Address";
        CopyText: Text[30];
        OutputNo: Integer;
        NoOfLoops: Integer;
        NoOfCopies: Integer;
        PurchaseOrderLbl: Label 'Purchase Quote';
        NoLbl: Label 'No.';
        DateLbl: Label 'Date';
        VendorOrderNoLbl: Label 'VendorOrder No';
        CurrencyLbl: Label 'Currency';
        SUPPLERLbl: Label 'SUPPLER';
        PAYTOLbl: Label 'PAY TO';
        ShipmentEffectedLbl: Label 'Shipment Effected';
        PartOfLoadingLbl: Label 'Port Of Loading';
        TradeTermsLbl: Label 'Trade Terms';
        PaymentTermsLbl: Label 'Payment Terms';
        PurchaserLbl: Label 'Purchaser';
        AuthorizedSignatureLbl: Label 'Authorized Signature';
        SupplierSignatureLbl: Label 'Supplier Signature';
        SeqNo: Integer;
        RecPurcLine: Record "Purchase Line";
        SubTotal: Decimal;
        SubTotalSGD: Decimal;
        Gst: Decimal;
        GstSGD: Decimal;
        GrandTotal: Decimal;
        GrandTotalSGD: Decimal;
        SubTotalLab: Label 'Sub-Total';
        GstLbl: Label '% GST';
        GrandTotalLbl: Label 'Grand Total';
        FirstLine: Record "Purchase Line";
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
        PaymentTerms: Record "Payment Terms";
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

                if (No * 100) = 0 then CentText := 'AND CENTS ZERO ';
                if (No * 100) = 1 then CentText := 'ONE CENT ';
                if (No * 100) = 2 then CentText := 'TWO CENTS ';
                if (No * 100) = 3 then CentText := 'THREE CENTS ';
                if (No * 100) = 4 then CentText := 'FOUR CENTS ';
                if (No * 100) = 5 then CentText := 'FIVE CENTS ';
                if (No * 100) = 6 then CentText := 'SIX CENTS ';
                if (No * 100) = 7 then CentText := 'SEVEN CENTS ';
                if (No * 100) = 8 then CentText := 'EIGHT CENTS ';
                if (No * 100) = 9 then CentText := 'NINE CENTS ';
                if (No * 100) = 10 then CentText := 'TEN CENTS ';

                if (No * 100) = 11 then CentText := 'ELEVEN CENTS ';
                if (No * 100) = 12 then CentText := 'TWELVE CENTS ';
                if (No * 100) = 13 then CentText := 'THIRTEEN CENTS ';
                if (No * 100) = 14 then CentText := 'FOURTEEN CENTS ';
                if (No * 100) = 15 then CentText := 'FIFTEEN CENTS ';
                if (No * 100) = 16 then CentText := 'SIXTEEN CENTS ';
                if (No * 100) = 17 then CentText := 'SEVENTEEN CENTS ';
                if (No * 100) = 18 then CentText := 'EIGHTTEEN CENTS ';
                if (No * 100) = 19 then CentText := 'NINETEEN CENTS ';
                if (No * 100) = 20 then CentText := 'TWENTY CENTS ';

                if (No * 100) = 21 then CentText := 'TWENTY ONE CENTS ';
                if (No * 100) = 22 then CentText := 'TWENTY TWO CENTS ';
                if (No * 100) = 23 then CentText := 'TWENTY THREE CENTS ';
                if (No * 100) = 24 then CentText := 'TWENTY FOUR CENTS ';
                if (No * 100) = 25 then CentText := 'TWENTY FIVE CENTS ';
                if (No * 100) = 26 then CentText := 'TWENTY SIX CENTS ';
                if (No * 100) = 27 then CentText := 'TWENTY SEVEN CENTS ';
                if (No * 100) = 28 then CentText := 'TWENTY EIGHT CENTS ';
                if (No * 100) = 29 then CentText := 'TWENTY NINE CENTS ';
                if (No * 100) = 30 then CentText := 'THIRTY CENTS ';

                if (No * 100) = 31 then CentText := 'THIRTY ONE CENTS ';
                if (No * 100) = 32 then CentText := 'THIRTY TWO CENTS ';
                if (No * 100) = 33 then CentText := 'THIRTY THREE CENTS ';
                if (No * 100) = 34 then CentText := 'THIRTY FOUR CENTS ';
                if (No * 100) = 35 then CentText := 'THIRTY FIVE CENTS ';
                if (No * 100) = 36 then CentText := 'THIRTY SIX CENTS ';
                if (No * 100) = 37 then CentText := 'THIRTY SEVEN CENTS ';
                if (No * 100) = 38 then CentText := 'THIRTY EIGHT CENTS ';
                if (No * 100) = 39 then CentText := 'THIRTY NINE CENTS ';
                if (No * 100) = 40 then CentText := 'FOURTY CENTS ';

                if (No * 100) = 41 then CentText := 'FORTY ONE CENTS ';
                if (No * 100) = 42 then CentText := 'FORTY TWO CENTS ';
                if (No * 100) = 43 then CentText := 'FORTY THREE CENTS ';
                if (No * 100) = 44 then CentText := 'FORTY FOUR CENTS ';
                if (No * 100) = 45 then CentText := 'FORTY FIVE CENTS ';
                if (No * 100) = 46 then CentText := 'FORTY SIX CENTS ';
                if (No * 100) = 47 then CentText := 'FORTY SEVEN CENTS ';
                if (No * 100) = 48 then CentText := 'FORTY EIGHT CENTS ';
                if (No * 100) = 49 then CentText := 'FORTY NINE CENTS ';
                if (No * 100) = 50 then CentText := 'FIFTY CENTS ';

                if (No * 100) = 51 then CentText := 'FIFTY ONE CENTS ';
                if (No * 100) = 52 then CentText := 'FIFTY TWO CENTS ';
                if (No * 100) = 53 then CentText := 'FIFTY THREE CENTS ';
                if (No * 100) = 54 then CentText := 'FIFTY FOUR CENTS ';
                if (No * 100) = 55 then CentText := 'FIFTY FIVE CENTS ';
                if (No * 100) = 56 then CentText := 'FIFTY SIX CENTS ';
                if (No * 100) = 57 then CentText := 'FIFTY SEVEN CENTS ';
                if (No * 100) = 58 then CentText := 'FIFTY EIGHT CENTS ';
                if (No * 100) = 59 then CentText := 'FIFTY NINE CENTS ';
                if (No * 100) = 60 then CentText := 'SIXTY CENTS ';

                if (No * 100) = 61 then CentText := 'SIXTY ONE CENTS ';
                if (No * 100) = 62 then CentText := 'SIXTY TWO CENTS ';
                if (No * 100) = 63 then CentText := 'SIXTY THREE CENTS ';
                if (No * 100) = 64 then CentText := 'SIXTY FOUR CENTS ';
                if (No * 100) = 65 then CentText := 'SIXTY FIVE CENTS ';
                if (No * 100) = 66 then CentText := 'SIXTY SIX CENTS ';
                if (No * 100) = 67 then CentText := 'SIXTY SEVEN CENTS ';
                if (No * 100) = 68 then CentText := 'SIXTY EIGHT CENTS ';
                if (No * 100) = 69 then CentText := 'SIXTY NINE CENTS ';
                if (No * 100) = 70 then CentText := 'SEVENTY CENTS ';

                if (No * 100) = 71 then CentText := 'SEVENTY ONE CENTS ';
                if (No * 100) = 72 then CentText := 'SEVENTY TWO CENTS ';
                if (No * 100) = 73 then CentText := 'SEVENTY THREE CENTS ';
                if (No * 100) = 74 then CentText := 'SEVENTY FOUR CENTS ';
                if (No * 100) = 75 then CentText := 'SEVENTY FIVE CENTS ';
                if (No * 100) = 76 then CentText := 'SEVENTY SIX CENTS ';
                if (No * 100) = 77 then CentText := 'SEVENTY SEVEN CENTS ';
                if (No * 100) = 78 then CentText := 'SEVENTY EIGHT CENTS ';
                if (No * 100) = 79 then CentText := 'SEVENTY NINE CENTS ';
                if (No * 100) = 80 then CentText := 'EIGHTY CENTS ';

                if (No * 100) = 81 then CentText := 'EIGHTY ONE CENTS ';
                if (No * 100) = 82 then CentText := 'EIGHTY TWO CENTS ';
                if (No * 100) = 83 then CentText := 'EIGHTY THREE CENTS ';
                if (No * 100) = 84 then CentText := 'EIGHTY FOUR CENTS ';
                if (No * 100) = 85 then CentText := 'EIGHTY FIVE CENTS ';
                if (No * 100) = 86 then CentText := 'EIGHTY SIX CENTS ';
                if (No * 100) = 87 then CentText := 'EIGHTY SEVEN CENTS ';
                if (No * 100) = 88 then CentText := 'EIGHTY EIGHT CENTS ';
                if (No * 100) = 89 then CentText := 'EIGHTY NINE CENTS ';
                if (No * 100) = 90 then CentText := 'NINETY CENTS ';

                if (No * 100) = 91 then CentText := 'NINETY ONE CENTS ';
                if (No * 100) = 92 then CentText := 'NINETY TWO CENTS ';
                if (No * 100) = 93 then CentText := 'NINETY THREE CENTS ';
                if (No * 100) = 94 then CentText := 'NINETY FOUR CENTS ';
                if (No * 100) = 95 then CentText := 'NINETY FIVE CENTS ';
                if (No * 100) = 96 then CentText := 'NINETY SIX CENTS ';
                if (No * 100) = 97 then CentText := 'NINETY SEVEN CENTS ';
                if (No * 100) = 98 then CentText := 'NINETY EIGHT CENTS ';
                if (No * 100) = 99 then CentText := 'NINETY NINE CENTS ';
            end;
        end;

        if (No * 100) = 0 then
            AddToNoText(NoText, NoTextIndex, PrintExponent, '')
        else
            AddToNoText(NoText, NoTextIndex, PrintExponent, Text028);

        AddToNoText(NoText, NoTextIndex, PrintExponent, CentText + 'ONLY');

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