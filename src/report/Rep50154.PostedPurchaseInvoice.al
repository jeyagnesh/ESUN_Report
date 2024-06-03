report 50154 "Posted Purchase Invoice"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = "Posted Purchase Invoice";
    PreviewMode = PrintLayout;
    dataset
    {
        dataitem(PurchaseInvHeader; "Purch. Inv. Header")
        {
            RequestFilterFields = "No.";
            DataItemTableView = SORTING("No.");
            dataitem(CopyLoop; "Integer")
            {
                DataItemTableView = sorting(Number);
                dataitem(PageLoop; "Integer")
                {
                    DataItemTableView = sorting(Number) where(Number = const(1));
                    column(RecCompInfoPicture; RecCompInfo.Picture)
                    {

                    }
                    column(PurchaseInvHeader_No; PurchaseInvHeader."No.")
                    {

                    }
                    column(VendorInvoice_No; PurchaseInvHeader."Vendor Invoice No.")
                    {

                    }
                    column(Document_Date; Format(PurchaseInvHeader."Document Date", 0, '<Day,2>/<Month,2>/<Year>'))
                    {

                    }
                    column(CurrencyCode; PurchaseInvHeader."Currency Code")
                    {

                    }
                    column(VendorOrder_No; PurchaseInvHeader."Vendor Order No.")
                    {

                    }
                    column(PaymentTerms; PaymentTermsText)
                    {

                    }
                    column(ShipmentEffected; PurchaseInvHeader."Shipment Effected")
                    {

                    }
                    column(PortOfLoading; PurchaseInvHeader."Port of loading")
                    {

                    }
                    column(TradeTerms; PurchaseInvHeader."Trade Terms")
                    {

                    }
                    column(BuyFromVendorNo; PurchaseInvHeader."Buy-from Vendor No.")
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
                    column(BuyFromVendorName; VarBuyFrom[1])
                    {

                    }
                    column(BuyFromAddress; VarBuyFrom[2])
                    {

                    }
                    column(BuyFromAddress2; VarBuyFrom[3])
                    {

                    }
                    column(BuyFromContact; VarBuyFrom[5])
                    {

                    }
                    column(BuyFromCounty_PostCode; VarBuyFrom[4])
                    {

                    }
                    column(BuyFromPhoneNo; VarBuyFrom[6])
                    {

                    }
                    column(BuyFromFaxNo; VarBuyFrom[7])
                    {

                    }
                    column(PayToVendorNo; PurchaseInvHeader."Pay-to Vendor No.")
                    {

                    }
                    column(PayToName; VarPayTo[1])
                    {

                    }
                    column(PaytoAddress; VarPayTo[2])
                    {

                    }
                    column(PaytoAddress2; VarPayTo[3])
                    {

                    }
                    column(PaytoContact; VarPayTo[5])
                    {

                    }
                    column(PaytoCounty_PostCode; VarPayTo[4])
                    {

                    }

                    column(PaytoPhoneNo; VarPayTo[6])
                    {

                    }
                    column(PaytoFaxNo; VarPayTo[7])
                    {

                    }
                    column(PurchaseInvoice_Lbl; StrSubstNo(Text004, CopyText))
                    {

                    }
                    column(No_Lbl; No_Lbl)
                    {

                    }
                    column(Date_Lbl; Date_Lbl)
                    {

                    }
                    column(VendorOrderNo_Lbl; VendorOrderNo_Lbl)
                    {

                    }
                    column(VendorInvoiceNo_Lbl; VendorInvoiceNo_Lbl)
                    {

                    }
                    column(Currency_Lbl; Currency_Lbl)
                    {

                    }
                    column(Currency; Currency)
                    {

                    }
                    column(Supplier_Lbl; Supplier_Lbl)
                    {

                    }
                    column(PayTo_Lbl; PayTo_Lbl)
                    {

                    }
                    column(ShipEffected_Lbl; ShipEffected_Lbl)
                    {

                    }
                    column(PartOfLoading_Lbl; PartOfLoading_Lbl)
                    {

                    }
                    column(TradeTerms_Lbl; TradeTerms_Lbl)
                    {

                    }
                    column(PaymentTerms_Lbl; PaymentTerms_Lbl)
                    {

                    }
                    column(PreparedBy_Lbl; PreparedBy_Lbl)
                    {

                    }
                    column(ApprovedBy_Lbl; ApprovedBy_Lbl)
                    {

                    }
                    column(RecievedBy_Lbl; RecievedBy_Lbl)
                    {

                    }
                    column(GST_Lbl; GST_Lbl)
                    {

                    }
                    column(SubTotal_Lbl; SubTotal_Lbl)
                    {

                    }
                    column(GrandTotal_Lbl; GrandTotal_Lbl)
                    {

                    }
                    column(OutputNo; OutputNo)
                    {

                    }
                    column(PhNo_Lbl; PhNo_Lbl)
                    {

                    }
                    column(FaxNo_Lbl; FaxNo_Lbl)
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
                    column(PageLbl; PageLbl)
                    {

                    }
                    column(LCY; LCY)
                    {

                    }
                    dataitem(PurchaseInvLine; "Purch. Inv. Line")
                    {
                        DataItemLinkReference = PurchaseInvHeader;
                        DataItemLink = "Document No." = FIELD("No.");
                        DataItemTableView = SORTING("Document No.", "Line No.");
                        column(No_PurchInvLine; "No.")
                        {

                        }
                        column(SeqNo; SeqNo)
                        {

                        }
                        column(Description; Description)
                        {

                        }
                        column(Quantity; Quantity)
                        {

                        }
                        column(Direct_Unit_Cost; "Direct Unit Cost")
                        {

                        }
                        column(Unit_of_Measure; "Unit of Measure Code")
                        {

                        }
                        column(Line_Amount; "Line Amount")
                        {

                        }
                        column(SLNO_Lbl; SLNO_Lbl)
                        {

                        }
                        column(Description_Lbl; Description_Lbl)
                        {

                        }
                        column(UnitOfCost_Lbl; UnitOfCost_Lbl)
                        {

                        }
                        column(UnitOfMeasure_Lbl; UnitOfMeasure_Lbl)
                        {

                        }
                        column(Amount_Lbl; Amount_Lbl)
                        {

                        }
                        column(Quantity_Lbl; Quantity_Lbl)
                        {

                        }
                        column(SubTotal; SubTotal)
                        {

                        }
                        column(VatAmount; VatAmount)
                        {

                        }
                        column(GrandTotal; GrandTotal)
                        {

                        }
                        column(GstRate; GstRate)
                        {

                        }
                        column(AmountInWords; Saying[1] + ' ' + Saying[2])
                        {
                        }
                        column(LineType; Type) { }
                        trigger OnAfterGetRecord()
                        begin
                            if (Type <> Type::" ") then begin
                                SeqNo += 1;
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
                Clear(VarBuyFrom);
                Clear(VarPayTo);
                Clear(SubTotal);
                Clear(GstRate);
                Clear(GrandTotal);
                RecCompInfo.Get();
                RecCompInfo.CalcFields(Picture);
                RecCompInfo.CalcFields(Picture1);
                vendor.reset;
                VarBuyFrom[1] := "Buy-from Vendor Name";
                VarBuyFrom[2] := "Buy-from Address";
                VarBuyFrom[3] := "Buy-from Address 2";
                RecCountry.Reset;
                if "Buy-from Post Code" <> '' then begin
                    if RecCountry.Get("Buy-from Country/Region Code") then
                        VarBuyFrom[4] := RecCountry.Name + ' ' + "Buy-from Post Code";
                end;
                CompressArray(VarBuyFrom);
                VarBuyFrom[5] := "Buy-from Contact";
                if Vendor.Get("Buy-from Vendor No.") then begin
                    VarBuyFrom[6] := Vendor."Phone No.";
                    VarBuyFrom[7] := Vendor."Fax No.";
                end;

                VarPayTo[1] := "Pay-to Name";
                VarPayTo[2] := "Pay-to Address";
                VarPayTo[3] := "Pay-to Address 2";
                RecCountry.Reset;
                if "Pay-to Post Code" <> '' then begin
                    if RecCountry.Get("Pay-to Country/Region Code") then
                        VarPayTo[4] := RecCountry.Name + ' ' + "Pay-to Post Code";
                end;
                CompressArray(VarPayTo);
                VarPayTo[5] := "Pay-to Contact";
                if Vendor.Get("Pay-to Vendor No.") then begin
                    VarPayTo[6] := Vendor."Phone No.";
                    VarPayTo[7] := Vendor."Fax No.";
                end;
                CalcFields("Amount Including VAT", Amount);
                SubTotal := Amount;
                VatAmount := "Amount Including VAT" - Amount;
                GrandTotal := Amount + VatAmount;


                PurchaseInvLine.SetRange("Document No.", PurchaseInvHeader."No.");
                PurchaseInvLine.SetFilter("VAT %", '>%1', 0);
                if PurchaseInvLine.FindFirst() then
                    GSTRate := PurchaseInvLine."VAT %";
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
                GstSGD := VatAmount * ExchangeRate;
                GrandTotalSGD := GrandTotal * ExchangeRate;
                InitTextVariable;
                FormatNoText(Saying, Abs(GrandTotal), '');
                if PaymentTerms.Get("Payment Terms Code") then
                    PaymentTermsText := PaymentTerms.Description
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
        layout("Posted Purchase Invoice")
        {
            Type = RDLC;
            LayoutFile = './ReportLayout/50154.ReportLayout.PurchaseInvoice.rdl';
        }
    }

    var
        PaymentTermsText: Text;
        PaymentTerms: Record "Payment Terms";
        LCY: Code[20];
        SeqNoempty: Decimal;
        RecCompInfo: Record "Company Information";
        TypeVar: Enum "Sales Line Type";
        RecCountry: Record "Country/Region";
        VarCompInfo: array[20] of Text;
        ReqPDocTittleOpt: Option "Purchase Invoice";
        VarDocTittle: Text;
        VarBuyFrom: array[10] of Text;
        VarPayTo: array[10] of Text;
        CopyText: Text[30];
        OutputNo: Integer;
        NoOfLoops: Integer;
        NoOfCopies: Integer;
        SeqNo: Integer;
        SeqNoText: Text;
        PurchaseInvoice_Lbl: Label 'Purchase Invoice';
        No_Lbl: Label 'No.';
        Date_Lbl: Label 'Date';
        VendorOrderNo_Lbl: Label 'Our Ref No';
        VendorInvoiceNo_Lbl: Label 'Vendor Inv No.';
        Currency_Lbl: Label 'Currency';
        Currency: Code[10];
        Supplier_Lbl: Label 'SUPPLIER';
        PayTo_Lbl: Label 'PAY TO';
        ShipEffected_Lbl: Label 'Shipment Effected';
        PartOfLoading_Lbl: Label 'Part Of Loading';
        TradeTerms_Lbl: Label 'Trade Terms';
        PaymentTerms_Lbl: Label 'Payment Terms';
        SLNO_Lbl: Label 'No';
        Description_Lbl: Label 'Description';
        Quantity_Lbl: Label 'Quantity';
        UnitOfMeasure_Lbl: Label 'Unit of Measure';
        UnitOfCost_Lbl: Label 'Unit Cost';
        Amount_Lbl: Label 'Amount($)';
        PreparedBy_Lbl: Label 'Prepared By';
        ApprovedBy_Lbl: Label 'Approved By';
        RecievedBy_Lbl: Label 'Recieved By';
        GST_Lbl: Label 'GST';
        VatAmount: Decimal;
        SubTotal: Decimal;
        SubTotalSGD: Decimal;
        GstSGD: Decimal;
        GrandTotalSGD: Decimal;
        SubTotal_Lbl: Label 'Sub-Total';
        GrandTotal: Decimal;
        GrandTotal_Lbl: Label 'Grand-Total';
        Discount: Decimal;
        GstRate: Decimal;
        Vendor: Record Vendor;
        PhNo_Lbl: Label 'Phone NO :';
        FaxNo_Lbl: Label 'FaxNo :';
        RecGLSetup: Record "General Ledger Setup";
        rere: Report "Purchase - Invoice";
        CurrencyTabel: Record Currency;
        CurrencyER: Record "Currency Exchange Rate";
        ExchangeRate: Decimal;
        ExchangeRate_Lbl: Label 'Exchange Rate';
        CurrencySGD: Code[20];
        rr: Report Order;
        PageLbl: Label 'Page';
        FormatDocument: Codeunit "Format Document";
        Text004: Label 'PURCHASE INVOICE %1', Comment = '%1 = Document No.';
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