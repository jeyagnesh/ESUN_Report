report 50160 "Proforma Invoice"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = "Proforma Invoice";
    PreviewMode = PrintLayout;
    dataset
    {
        dataitem("Sales Header"; "Sales Header")
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
                    column(SalesHeader_No; SalseOrderNo)
                    {

                    }
                    column(Sales_Order_No; "Sales Header"."No.")
                    {

                    }
                    column(SalesContractNo; "Sales Header"."Sales Contract No.") { }
                    column(SalesContractNoToggle; SalesContractNoToggle) { }
                    column(OrderNo; OrderNo)
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
                    column(Picture1; RecCompInfo.Picture1) { }
                    column(DocumentDate; Format("Sales Header"."Document Date", 0, '<Day,2>/<Month,2>/<Year>'))
                    {

                    }
                    column(CurrencyCode; "Sales Header"."Currency Code")
                    {

                    }
                    column(BillToCustomerNo; "Sales Header"."Bill-to Customer No.")
                    {

                    }
                    column(VarBillToName; VarBillTo[1])
                    {

                    }
                    column(ourRefNo; "Sales Header"."Your Reference")
                    {

                    }
                    column(TermsAndCondition; TermsAndCondition)
                    {

                    }
                    column(ProformaInvoice; ProformaInvoice)
                    {

                    }
                    column(VarBillToAddress; VarBillTo[2])
                    {

                    }
                    column(VarBillToAddress2; VarBillTo[3])
                    {

                    }
                    column(VarBillToContact; VarBillTo[4])
                    {

                    }
                    column(VarBillToCounty_PostCode; VarBillTo[5])
                    {

                    }
                    column(VarBillTohoneNo; VarBillTo[6])
                    {

                    }
                    column(VarBillToFaxNo; VarBillTo[7])
                    {

                    }
                    column(SellToCustNo; "Sales Header"."Sell-to Customer No.")
                    {

                    }
                    column(VarSellToName; VarSellTo[1])
                    {

                    }
                    column(VarSellToAddress; VarSellTo[2])
                    {

                    }
                    column(VarSellToAddress2; VarSellTo[3])
                    {

                    }
                    column(VarSellToContact; VarSellTo[4])
                    {

                    }
                    column(VarSellToCounty_PostCode; VarSellTo[5])
                    {

                    }
                    column(VarSellToPhoneNo; VarSellTo[6])
                    {

                    }
                    column(VarSellToFaxNo; VarSellTo[7])
                    {

                    }
                    column(VarSellToIEC; VarSellTo[8]) { }
                    column(SalesOrderLbl; StrSubstNo(Text004, CopyText))
                    {

                    }
                    column(PortLoading; "Sales Header"."Port of loading")
                    {

                    }
                    column(portDischarge; "Sales Header"."Port of Discharge")
                    {

                    }
                    column(Date; Format("Sales Header"."Document Date", 0, '<Day,2>-<Month Text,3>-<Year>'))
                    {

                    }
                    column(NoLbl; NoLbl)
                    {

                    }
                    column(DateLbl; DateLbl)
                    {

                    }
                    column(OurRef_No; OurRefNoLbl)
                    {

                    }
                    column(CurrencyLbl; CurrencyLbl)
                    {

                    }
                    column(SUPPLERLbl; SUPPLERLbl)
                    {

                    }
                    column(BillTOLbl; BillTOLbl)
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
                    column(ShipmentEffected; "Sales Header"."Shipment Effected")
                    {

                    }
                    column(PortOfLoading; "Sales Header"."Port of loading")
                    {

                    }
                    column(TradeTerms; "Sales Header"."Trade Terms ")
                    {

                    }
                    column(WorkDescription; "Sales Header".GetWorkDescription())
                    {

                    }
                    column(CollectingBank; GetCollectingBank())
                    {

                    }
                    column(CollectingBank1; CollectingBank)
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
                    column(quantity_Percentage; quantity_Percentage)
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
                    column(Quantity_Description; "Sales Header"."Quantity Description")
                    {

                    }
                    column(Packing; "Sales Header".Packing)
                    {

                    }
                    column(Payment; "Sales Header".Payment)
                    {

                    }
                    column(Shipment; "Sales Header".Shipment)
                    {

                    }
                    dataitem("Sales Line"; "Sales Line")
                    {
                        DataItemLink = "Document No." = FIELD("No."), "Document Type" = FIELD("Document Type");
                        DataItemLinkReference = "Sales Header";
                        column(salseLine_No; "No.")
                        {

                        }
                        column(Description; Description)
                        {

                        }
                        column(Description_2; "Description 2")
                        {

                        }
                        column(Quantity; Quantity)
                        {

                        }
                        column(UnitofMeasure; "Unit of Measure Code")
                        {

                        }
                        column(DirectUnitCost; "Unit Cost")
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
                            if (Quantity = 0) then
                                CurrReport.Skip();
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
                Clear(VarBillTo);
                Clear(VarSellTo);
                Clear(SubTotal);
                Clear(Gst);
                Clear(GrandTotal);
                Clear(SalseOrderNo);
                Clear(CustomerBankAc);
                Clear(BankAccCard);
                RecCompInfo.Get;
                RecCompInfo.CalcFields(Picture);
                RecCompInfo.CalcFields(Picture1);
                Customer.Reset();
                VarBillTo[1] := "Bill-to Name";
                VarBillTo[2] := "Bill-to Address";
                VarBillTo[3] := "Bill-to Address 2";
                RecCountry.Reset;
                if "Bill-to Post Code" <> '' then begin
                    if RecCountry.Get("Bill-to Country/Region Code") then
                        VarBillTo[5] := RecCountry.Name + ' ' + "Bill-to Post Code";
                end;
                CompressArray(VarBillTo);
                VarBillTo[4] := "Bill-to Contact";
                Customer.reset();
                if Customer.Get("Bill-to Customer No.") then begin
                    VarBillTo[6] := Customer."Phone No.";
                    VarBillTo[7] := Customer."Fax No.";
                end;

                VarSellTo[1] := "Sell-to Customer Name";
                VarSellTo[2] := "Sell-to Address";
                VarSellTo[3] := "Sell-to Address 2";
                RecCountry.Reset;
                if "Sell-to Post Code" <> '' then begin
                    if RecCountry.Get("Sell-to Country/Region Code") then
                        VarSellTo[5] := RecCountry.Name + ' ' + "Sell-to Post Code";
                end;
                CompressArray(VarSellTo);

                VarSellTo[4] := "Sell-to Contact";
                Customer.Reset();
                if Customer.Get("Sell-to Customer No.") then begin
                    VarSellTo[6] := Customer."Phone No.";
                    VarSellTo[7] := Customer."Fax No.";
                    VarSellTo[8] := 'IEC Code: ' + Customer."IEC Code";
                end;


                SalseOrderNo := "No.";
                if PaymentTermsDesc.Get("Payment Terms Code") then
                    PaymentTerms := PaymentTermsDesc.Description;

                CalcFields("Amount Including VAT", Amount);
                SubTotal := Amount;
                Gst := "Amount Including VAT" - Amount;
                GrandTotal := "Amount Including VAT";

                FirstSalesLine.Reset();
                FirstSalesLine.SetRange("Document Type", "Document Type");
                FirstSalesLine.SetRange("Document No.", "No.");
                FirstSalesLine.SetFilter("VAT %", '>%1', 0);
                if FirstSalesLine.FindFirst() then
                    GSTRate := FirstSalesLine."VAT %";
                RecGLSetup.Get();
                if "Currency Code" <> '' then
                    Currency := '(' + "Currency Code" + ')'
                else
                    Currency := '(' + RecGLSetup."LCY Code" + ')';

                if "Currency Code" <> '' then
                    LCY := "Currency Code"
                else
                    LCY := RecGLSetup."LCY Code";

                CustomerBankAc.Reset();
                CustomerBankAc.SetRange("Customer No.", "Sell-to Customer No.");
                if CustomerBankAc.FindFirst() then begin
                    CustBankAc[1] := CustomerBankAc.Name;
                    CustBankAc[2] := CustomerBankAc.Address + CustomerBankAc."Address 2" + CustomerBankAc.County + CustomerBankAc."Post Code";
                    CustBankAc[3] := CustomerBankAc."Bank Account No.";
                    CustBankAc[4] := CustomerBankAc."SWIFT Code";
                    CustBankAc[5] := 'Esun International Pte Ltd';
                    CustBankAc[6] := CustomerBankAc."Intermediary Bank";
                    CustBankAc[7] := CustomerBankAc."Intermediary Bank SWIFT";
                    CustBankAc[8] := CustomerBankAc.IBAN;
                    CustBankAc[9] := CustomerBankAc."Bank Clearing Standard";
                    CustBankAc[10] := CustomerBankAc."Bank Clearing Code";
                end;

                BankAccCard.Reset();
                BankAccCard.SetRange("No.", "Company Bank Account Code");
                if BankAccCard.FindFirst() then begin
                    BankAccount[1] := BankAccCard.Name;
                    BankAccount[2] := BankAccCard."SWIFT Code";
                    BankAccount[3] := BankAccCard."Bank Account No.";
                    BankAccount[4] := BankAccCard."Intermediary Bank";
                    BankAccount[5] := BankAccCard."Intermediary Bank Swift Code";
                    BankAccount[6] := BankAccCard."Pay Now";
                end;

                if PartialShipment = true then
                    PrintAll := 'Disallowed'
                else
                    PrintAll := 'Allowed';

                if Transhipment = true then
                    PrintAll1 := 'Disallowed'
                else
                    PrintAll1 := 'Allowed';
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
                    field(CollectingBank1; CollectingBank)
                    {
                        ApplicationArea = all;
                        Caption = 'CollectingBank';
                    }
                    field("Sales Contract No."; SalesContractNoToggle)
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
        layout("Proforma Invoice")
        {
            Type = RDLC;
            LayoutFile = './ReportLayout/50160.ReportLayout.ProformaInvoice.rdl';
        }
    }

    var
        ContractNO: code[20];
        Sales_Order_No: Code[20];
        OrderNo: Code[20];
        PartialShipment: Boolean;
        Transhipment: Boolean;
        PrintAll: Text;
        PrintAll1: Text;
        temp: Record "Sales Header";
        LCY: Code[20];
        PaymentTerms: Text;
        PaymentTermsDesc: Record "Payment Terms";
        Text004: Label 'SALES CONTRACT %1', Comment = '%1 = Document No.';
        SalseOrderNo: Code[20];
        RecCompInfo: Record "Company Information";
        RecCountry: Record "Country/Region";
        VarCompInfo: array[20] of Text;
        ReqPDocTittleOpt: Option "Sales Order";
        VarDocTittle: Text;
        VarBillTo: array[10] of Text;
        VarSellTo: array[10] of Text;
        FormatAddress: Codeunit "Format Address";
        PaymentTermsLbl: Label 'Payment Terms';
        CopyText: Text[30];
        OutputNo: Integer;
        NoOfLoops: Integer;
        NoOfCopies: Integer;
        PurchaseOrderLbl: Label 'sales Order';
        NoLbl: Label 'No.';
        DateLbl: Label 'Date';
        OurRefNoLbl: Label 'Our Ref No.';
        CurrencyLbl: Label 'Currency';
        SUPPLERLbl: Label 'SUPPLER';
        BillTOLbl: Label 'Bill TO';
        ShipmentEffectedLbl: Label 'Shipment Effected';
        PartOfLoadingLbl: Label 'Port Of Loading';
        TradeTermsLbl: Label 'Trade Terms';
        PurchaserLbl: Label 'Purchaser';
        AuthorizedSignatureLbl: Label 'Authorized Signature';
        SupplierSignatureLbl: Label 'Supplier Signature';
        SeqNo: Integer;
        RecSalseLine: Record "Purchase Line";
        SubTotal: Decimal;
        SubTotalSGD: Decimal;
        Gst: Decimal;
        GstSGD: Decimal;
        GrandTotal: Decimal;
        GrandTotalSGD: Decimal;
        SubTotalLab: Label 'Sub-Total';
        GstLbl: Label '% GST';
        GrandTotalLbl: Label 'Grand Total';
        FirstSalesLine: Record "Sales Line";
        GSTRate: Decimal;
        Customer: Record Customer;
        Currency: Code[10];
        RecGLSetup: Record "General Ledger Setup";
        CurrencyER: Record "Currency Exchange Rate";
        ExchangeRate: Decimal;
        ExchangeRate_Lbl: Label 'Exchange Rate';
        CurrencySGD: Code[20];
        PageLbl: Label 'Page';
        FormatDocument: Codeunit "Format Document";
        Quantity: Boolean;
        TermsAndCondition: Boolean;
        ProformaInvoice: Boolean;
        showIIF: Boolean;
        ArchiveDoc: Boolean;
        LogInter: Boolean;
        CustomerBankAc: Record "Customer Bank Account";
        BankAccCard: Record "Bank Account";
        BankAccount: array[10] of Text;
        CustBankAc: array[10] of Text;
        quantity_Percentage: Text;
        QtyPercentageText: Boolean;
        CollectingBank: Boolean;
        SalesContractNoToggle: Boolean;

    procedure SetFieldsVisible(NewAdjustext: Boolean)
    begin
        QtyPercentageText := NewAdjustext;
    end;

    procedure GetCollectingBank(): Text
    var
        TypeHelper: Codeunit "Type Helper";
        InStream: InStream;
    begin
        "Sales Header".CalcFields("Sales Header"."Collecting Bank");
        "Sales Header"."Collecting Bank".CreateInStream(InStream, TextEncoding::UTF8);
        exit(TypeHelper.ReadAsTextWithSeparator(InStream, TypeHelper.LFSeparator));
    end;
}