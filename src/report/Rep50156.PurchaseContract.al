report 50156 "Purchase Contract"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = "Purchase Contract";
    PreviewMode = PrintLayout;
    dataset
    {
        dataitem("Purchase Header"; "Purchase Header")
        {
            RequestFilterFields = "No.";
            DataItemTableView = WHERE("Document Type" = FILTER(Order));
            column(Document_Type; "Document Type")
            {

            }
            dataitem(CopyLoop; "Integer")
            {
                DataItemTableView = SORTING(Number);
                dataitem(PageLoop; "Integer")
                {
                    DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                    column(PurchaseHeader_No; PurchaseOrderNo)
                    {

                    }
                    column(PurchaseContract_No; "Purchase Header"."Purchase Contract No.")
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
                    column(CurrencyCode; "Purchase Header"."Currency Code")
                    {

                    }
                    column(BuyFromVendorNo; "Purchase Header"."Buy-from Vendor No.")
                    {

                    }
                    column(PurchContract_No; "Purchase Header"."Purchase Contract No.")
                    {

                    }
                    column(BuyFromVendorName; VarBuyFrom[1])
                    {

                    }
                    column(ourRefNo; "Purchase Header"."Your Reference")
                    {

                    }
                    column(TermsAndCondition; TermsAndCondition)
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
                    column(PurchaseContractLbl; StrSubstNo(Text004, CopyText))
                    {

                    }
                    column(NoLbl; NoLbl)
                    {

                    }
                    column(DateLbl; DateLbl)
                    {

                    }
                    column(OurRef_No; VendorOrderNoLbl)
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
                    column(PaymentTerms; PaymentTerms)
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
                    column(quantity_Percentage; quantity_Percentage)
                    {

                    }
                    column(Weight_Percentage; Weight_Percentage)
                    {

                    }
                    column(Quantity_Amount; Quantity_Amount)
                    {

                    }
                    column(vendbankAc1; vendbankAc[1])
                    {

                    }
                    column(vendbankAc2; vendbankAc[2])
                    {

                    }
                    column(vendbankAc3; vendbankAc[3])
                    {

                    }
                    column(vendbankAc4; vendbankAc[4])
                    {

                    }
                    column(vendbankAc5; vendbankAc[5])
                    {

                    }
                    column(vendbankAc6; vendbankAc[6])
                    {

                    }
                    column(vendbankAc7; vendbankAc[7])
                    {

                    }
                    column(vendbankAc8; vendbankAc[8])
                    {

                    }
                    column(LCY; LCY)
                    {

                    }
                    column(PrintAll; PrintAll)
                    {

                    }
                    column(PrintAll1; PrintAll1)
                    {

                    }
                    column(Quantity_Description; "Purchase Header"."Quantity Description")
                    {

                    }
                    column(Packing; "Purchase Header".Packing)
                    {

                    }
                    column(Shipment; "Purchase Header".Shipment)
                    {

                    }
                    column(Payment; "Purchase Header".Payment)
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
                        column(Unit_of_Measure_Code; "Unit of Measure Code")
                        {

                        }
                        column(DirectUnitCost; "Direct Unit Cost")
                        {

                        }
                        column(Type; Type)
                        {

                        }
                        column(LineAmount; "Line Amount")
                        {

                        }
                        column(SeqNo; SeqNo)
                        {

                        }
                        column(UOMCode; UOMCode)
                        {

                        }
                        trigger OnAfterGetRecord()
                        begin
                            if (Type = type::Item) and (Quantity = 0) then
                                CurrReport.Skip();
                            if (Type <> Type::" ") then
                                SeqNo += 1;
                            if "Purchase Line"."Unit of Measure Code" <> '' then
                                UOMCode := "Unit of Measure Code";
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
                RecCountry.Reset;
                if "Buy-from Post Code" <> '' then begin
                    RecCountry.get("Buy-from Country/Region Code");
                    VarBuyFrom[5] := RecCountry."Name" + ' ' + "Buy-from Post Code";
                end;
                CompressArray(VarBuyFrom);
                VarBuyFrom[4] := "Buy-from Contact";
                if Vendor.Get("Buy-from Vendor No.") then begin
                    VarBuyFrom[6] := Vendor."Phone No.";
                    VarBuyFrom[7] := Vendor."Fax No.";
                end;

                VarPayTo[1] := "Pay-to Name";
                VarPayTo[2] := "Pay-to Address";
                VarPayTo[3] := "Pay-to Address 2";
                RecCountry.Reset;
                if "Pay-to Post Code" <> '' then begin
                    RecCountry.Get("Pay-to Country/Region Code");
                    VarPayTo[4] := RecCountry."Name" + ' ' + "Pay-to Post Code";
                end;
                CompressArray(VarPayTo);
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
                RecGLSetup.Get();
                if "Currency Code" <> '' then
                    LCY := "Currency Code"
                else
                    LCY := RecGLSetup."LCY Code";

                if PaymentTermsDesc.Get("Payment Terms Code") then
                    PaymentTerms := PaymentTermsDesc.Description;

                VendorBankAc.Reset();
                if VendorBankAc.Get("Buy-from Vendor No.") then begin
                    vendbankAc[1] := VendorBankAc.Name;
                    vendbankAc[2] := VendorBankAc.Address;
                    vendbankAc[3] := VendorBankAc."Address 2";
                    vendbankAc[4] := VendorBankAc.County + VendorBankAc."Post Code";
                    vendbankAc[5] := VendorBankAc."Phone No.";
                    vendbankAc[6] := VendorBankAc."SWIFT Code";
                    vendbankAc[7] := VendorBankAc.IBAN;
                    vendbankAc[8] := VendorBankAc."Bank Account No.";
                    CompressArray(vendbankAc);
                end;
                if PartialShipment = true then
                    PrintAll := 'Allowed'
                else
                    PrintAll := 'Disallowed';

                if Transhipment = true then
                    PrintAll1 := 'Allowed'
                else
                    PrintAll1 := 'Disallowed';
            end;
        }
    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(Option)
                {
                    field(NoOfCopies; NoOfCopies)
                    {
                        ApplicationArea = All;
                    }
                    field(showIIF; showIIF)
                    {
                        Caption = 'Show Internal Information';
                        ApplicationArea = All;
                    }
                    field(ArchiveDoc; ArchiveDoc)
                    {
                        Caption = 'Archive Document';
                        ApplicationArea = All;
                    }
                    field(LogInter; LogInter)
                    {
                        Caption = 'Log Interaction';
                        ApplicationArea = All;
                    }
                    field(Quantity; Quantity)
                    {
                        Caption = 'Quantity %';
                        ApplicationArea = All;
                        trigger OnValidate()
                        begin
                            if Quantity then
                                SetFieldsVisible(true)
                            else
                                SetFieldsVisible(false);
                        end;
                    }
                    field(Weight; Weight)
                    {
                        Caption = 'Weight %';
                        ApplicationArea = All;
                        trigger OnValidate()
                        begin
                            if Weight then
                                SetFieldsVisible1(true)
                            else
                                SetFieldsVisible1(false);
                        end;
                    }
                    group(PercentageText)
                    {
                        Visible = QtyPercentageText;
                        ShowCaption = false;
                        field(quantity_Percentage; quantity_Percentage)
                        {
                            Caption = 'Quantity Percentage';
                            ApplicationArea = all;
                        }
                    }
                    group(Percentage)
                    {
                        Visible = WeightPercentageText;
                        ShowCaption = false;
                        field(Weight_Percentage; Weight_Percentage)
                        {
                            Caption = 'Weight Percentage';
                            ApplicationArea = all;
                        }
                    }
                    field(TermsAndCondition; TermsAndCondition)
                    {
                        Caption = 'Terms And Condition';
                        ApplicationArea = All;
                    }
                    field(PartialShipment; PartialShipment)
                    {
                        Caption = 'Partial Shipment';
                        ApplicationArea = all;
                    }
                    field(Transhipment; Transhipment)
                    {
                        Caption = 'Transhipment';
                        ApplicationArea = all;
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
        layout("Purchase Contract")
        {
            Type = RDLC;
            LayoutFile = './ReportLayout/50156.ReportLayout.PurchaseContract.rdl';
        }
    }
    trigger OnInitReport()
    begin
        Quantity_Amount := false;
        Quantity := true;
        quantity_Percentage := '10';
        TermsAndCondition := true;
        if Quantity = true then
            QtyPercentageText := true;
        Weight_Percentage := '0.3';
        Weight := true;
        if Weight = true then
            WeightPercentageText := true;
    end;

    var
        Text004: Label 'PURCHASE CONTRACT %1', Comment = '%1 = Document No.';
        PurchaseOrderNo: Code[20];
        PaymentTermsDesc: Record "Payment Terms";
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
        Weight_Percentage: Text;
        WeightPercentageText: Boolean;
        Weight: Boolean;
        PurchaseOrderLbl: Label 'Purchase Order';
        NoLbl: Label 'No.';
        DateLbl: Label 'Date';
        VendorOrderNoLbl: Label 'Our Ref No.';
        CurrencyLbl: Label 'Currency';
        SUPPLERLbl: Label 'SUPPLER';
        PAYTOLbl: Label 'PAY TO';
        ShipmentEffectedLbl: Label 'Shipment Effected';
        PartOfLoadingLbl: Label 'Port Of Loading';
        TradeTermsLbl: Label 'Trade Terms';
        PaymentTerms: Text;
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
        FirstPurchaseLine: Record "Purchase Line";
        GSTRate: Decimal;
        Vendor: Record Vendor;
        Currency: Code[10];
        UOMCode: Code[20];
        RecGLSetup: Record "General Ledger Setup";
        CurrencyER: Record "Currency Exchange Rate";
        ExchangeRate: Decimal;
        ExchangeRate_Lbl: Label 'Exchange Rate';
        CurrencySGD: Code[20];
        PageLbl: Label 'Page';
        FormatDocument: Codeunit "Format Document";
        Quantity: Boolean;
        TermsAndCondition: Boolean;
        showIIF: Boolean;
        ArchiveDoc: Boolean;
        LogInter: Boolean;
        Quantity_Amount: Boolean;
        quantity_Percentage: Text;
        QtyPercentageText: Boolean;
        VendorBankAc: Record "Vendor Bank Account";
        vendbankAc: array[10] of Text;
        LCY: Code[20];
        PartialShipment: Boolean;
        Transhipment: Boolean;
        PrintAll: Text;
        PrintAll1: Text;

    procedure SetFieldsVisible(NewAdjustext: Boolean)
    begin
        QtyPercentageText := NewAdjustext;
    end;

    procedure SetFieldsVisible1(NewAdjustext: Boolean)
    begin
        WeightPercentageText := NewAdjustext;
    end;
}