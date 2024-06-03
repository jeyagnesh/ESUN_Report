report 50150 "Purchase Order"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = "Purchase Order";
    PreviewMode = PrintLayout;
    dataset
    {
        dataitem("Purchase Header"; "Purchase Header")
        {
            RequestFilterFields = "No.";
            DataItemTableView = WHERE("Document Type" = FILTER(Order));
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
                    column(RecCompInfo_Picture1; RecCompInfo.Picture1) { }
                    column(DocumentDate; Format("Purchase Header"."Document Date", 0, '<Day,2>/<Month,2>/<Year>'))
                    {

                    }
                    column(VendorOrder_No; "Purchase Header"."Vendor Order No.")
                    {

                    }
                    column(PaymentTerms; PaymentTermsText)
                    {

                    }
                    column(ShipmentEffected; "Purchase Header"."Shipment Effected")
                    {

                    }
                    column(PortOfLoading; "Purchase Header"."Port of loading")
                    {

                    }
                    column(TradeTerms; "Purchase Header"."Trade Terms")
                    {

                    }
                    column(CurrencyCode; "Purchase Header"."Currency Code")
                    {

                    }
                    column(BuyFromVendorNo; "Purchase Header"."Buy-from Vendor No.")
                    {

                    }
                    column(BuyFromVendorName; VarBuyFrom[1])
                    {

                    }
                    column(BuyFromAddress; VarBuyFrom[2])
                    {

                    }
                    column(BuyFromAddress2; VarBuyFrom[3])
                    {

                    }
                    column(BuyFromContact; VarBuyFrom[4])
                    {

                    }
                    column(BuyFromCounty_PostCode; VarBuyFrom[5])
                    {

                    }
                    column(BuyFromPhoneNo; VarBuyFrom[6])
                    {

                    }
                    column(BuyFromFaxNo; VarBuyFrom[7])
                    {

                    }
                    column(PayToVendorNo; "Purchase Header"."Pay-to Vendor No.")
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
                    column(PurchaseOrderLbl; StrSubstNo(Text004, CopyText))
                    {

                    }
                    column(NoLbl; NoLbl)
                    {

                    }
                    column(DateLbl; DateLbl)
                    {

                    }
                    column(VendorOrderNoLbl; VendorOrderNoLbl)
                    {

                    }
                    column(CurrencyLbl; CurrencyLbl)
                    {

                    }
                    column(SUPPLERLbl; SUPPLERLbl)
                    {

                    }
                    column(PAYTOLbl; PAYTOLbl)
                    {

                    }
                    column(ShipmentEffectedLbl; ShipmentEffectedLbl)
                    {

                    }
                    column(PartOfLoadingLbl; PartOfLoadingLbl)
                    {

                    }
                    column(TradeTermsLbl; TradeTermsLbl)
                    {

                    }
                    column(PaymentTermsLbl; PaymentTermsLbl)
                    {

                    }
                    column(PurchaserLbl; PurchaserLbl)
                    {

                    }
                    column(AuthorizedSignatureLbl; AuthorizedSignatureLbl)
                    {

                    }
                    column(SupplierSignatureLbl; SupplierSignatureLbl)
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
                    dataitem("Purchase Line"; "Purchase Line")
                    {
                        DataItemLink = "Document No." = FIELD("No."), "Document Type" = FIELD("Document Type");
                        DataItemLinkReference = "Purchase Header";
                        column(PurchaseLine_No; "No.")
                        {

                        }
                        column(Description; Description)
                        {

                        }
                        column(Quantity; Quantity)
                        {

                        }
                        column(UnitofMeasure; "Unit of Measure Code")
                        {

                        }
                        column(DirectUnitCost; "Direct Unit Cost")
                        {

                        }
                        column(LineAmount; "Line Amount")
                        {

                        }
                        column(SeqNo; SeqNo)
                        {

                        }
                        column(LineType; Type) { }
                        trigger OnAfterGetRecord()
                        begin
                            if (Type <> Type::" ") then
                                SeqNo += 1;
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
                RecCompInfo.Get;
                RecCompInfo.CalcFields(Picture);
                RecCompInfo.CalcFields(Picture1);
                Vendor.Reset();
                VarBuyFrom[1] := "Buy-from Vendor Name";
                VarBuyFrom[2] := "Buy-from Address";
                VarBuyFrom[3] := "Buy-from Address 2";
                VarBuyFrom[4] := "Buy-from Contact";
                RecCountry.Reset;
                if "Buy-from Post Code" <> '' then begin
                    if RecCountry.Get("Buy-from Country/Region Code") then
                        VarBuyFrom[5] := RecCountry.Name + ' ' + "Buy-from Post Code";
                end;
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
                VarPayTo[5] := "Pay-to Contact";
                if Vendor.Get("Pay-to Vendor No.") then begin
                    VarPayTo[6] := Vendor."Phone No.";
                    VarPayTo[7] := Vendor."Fax No.";
                end;

                PurchaseOrderNo := "No.";

                CalcFields("Amount Including VAT", Amount);
                SubTotal := Amount;
                Gst := "Amount Including VAT" - Amount;
                GrandTotal := "Amount Including VAT";
                FirstPurchaseLine.SetRange("Document Type", "Document Type");
                FirstPurchaseLine.SetRange("Document No.", "No.");
                FirstPurchaseLine.SetFilter("VAT %", '>%1', 0);
                if FirstPurchaseLine.FindFirst() then
                    GSTRate := FirstPurchaseLine."VAT %";
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
                if PaymentTerms.Get("Payment Terms Code") then
                    PaymentTermsText := PaymentTerms.Description;
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
        layout("Purchase Order")
        {
            Type = RDLC;
            LayoutFile = './ReportLayout/50150.ReportLayout.PurchaseOrder.rdl';
        }
    }

    var
        PaymentTermsText: Text;
        LCY: Code[20];
        Text004: Label 'PURCHASE ORDER %1', Comment = '%1 = Document No.';
        PurchaseOrderNo: Code[20];
        RecCompInfo: Record "Company Information";
        RecCountry: Record "Country/Region";
        VarCompInfo: array[20] of Text;
        ReqPDocTittleOpt: Option "Purchase Order";
        VarDocTittle: Text;
        VarBuyFrom: array[10] of Text;
        VarPayTo: array[10] of Text;
        FormatAddress: Codeunit "Format Address";
        CopyText: Text[30];
        OutputNo: Integer;
        NoOfLoops: Integer;
        NoOfCopies: Integer;
        PurchaseOrderLbl: Label 'Purchase Order';
        NoLbl: Label 'No.';
        DateLbl: Label 'Date';
        VendorOrderNoLbl: Label 'Vendor Order No.';
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
        SeqNoempty: Integer;
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
        FirstPurchaseLine: Record "Purchase Line";
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
}