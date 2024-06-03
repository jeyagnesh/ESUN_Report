report 50167 "Payment Voucher2"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ReportLayout/50167.ReportLayout.Payment Voucher2.rdl';
    ApplicationArea = All;
    Caption = 'Payment Voucher - GL';
    PreviewMode = PrintLayout;
    UsageCategory = ReportsAndAnalysis;
    dataset
    {
        dataitem("Gen. Journal Line"; "Gen. Journal Line")
        {
            DataItemTableView = SORTING("Journal Template Name", "Journal Batch Name", "Posting Date", "Document No.") WHERE("Document Type" = FILTER(Payment | Refund));
            PrintOnlyIfDetail = false;
            column(CompanyInfoPicture; CompanyInfo.Picture)
            {
            }
            column(CompanyInfoPicture2; CompanyInfo."Picture 2")
            {

            }
            column(CompanyInfoPicture3; CompanyInfo."Picture 3")
            {

            }
            column(CompanyInfoPicture4; CompanyInfo."Picture 4")
            {

            }
            column(TotalLineAmount; TotalLineAmount) { }
            column(VLEText; VLEText)
            {
            }
            column(Gen__Journal_Line__Document_No__; "Document No.")
            {
            }
            column(Gen__Journal_Line__Document_Type; "Document Type")
            {
            }
            column(Gen__Journal_Line__Posting_Date_; Format("Posting Date", 0, '<Day,2>/<Month,2>/<Year4>'))
            {
            }
            column(Gen__Journal_Line__External_Document_No__; "External Document No.")
            {
            }
            column(GJLBank__Account_No__; GJLBank."Account No.")
            {
            }
            column(Bal__Account_No__; "Bal. Account No.")
            {
            }
            column(Bal__Account_Type__; "Bal. Account Type")
            {
            }
            column(CompInfo_Picture; CompInfo.Picture)
            {
            }
            column(FORMAT__Posting_Date__0___Day_2___Month_2___Year4____; Format("Posting Date", 0, '<Day,2>/<Month,2>/<Year4>'))
            {
            }
            column(Gen__Journal_Line__Document_No___Control1000000030; "Document No.")
            {
            }
            column(Gen__Journal_Line_Amount; "VAT Base Amount")
            {
            }
            column(Gen__Journal_Line_Amount1; "Bal. VAT Base Amount")
            {

            }
            column(Gen_Total_Amount; Gen_Total_Amount)
            {

            }
            column(Desc1; Description)
            {
            }
            column(Description_2; "Description 2")
            {
            }
            column(Gen__Journal_Line__Account_Type_; "Account Type")
            {
            }
            column(Sequence; Sequence)
            {
            }
            column(GJLAcc__Account_Type_; GJLAcc."Account Type")
            {
            }
            column(GJLAcc__Account_No__; GJLAcc."Account No.")
            {
            }
            column(GLAcc_Name; GLAcc.Name)
            {
            }
            column(BnkAcc_Name; BnkAcc.Name)
            {
            }
            column(ABS__Amount__LCY___; "Amount (LCY)")
            {
            }
            column(CurrCodeGenJourLine; CurrCode)
            {
            }
            column(InfoName; InfoName)
            {
            }
            column(Name; Name)
            {

            }
            column(Payment_Method_Code; "Payment Method Code")
            {

            }
            column(FORMAT__Document_Date__0___Day_2___Month_2___Year4____; Format("Document Date", 0, '<Day,2>/<Month,2>/<Year4>'))
            {
            }
            column(GJLBank__Currency_Code_; GJLBank."Currency Code")
            {
            }
            column(GJLBank__Account_No___Control1000000062; GJLBank."Account No.")
            {
            }
            column(ShowUnappliedAmount; ShowUnappliedAmount)
            {
            }
            column(ExchangeRate; ExchangeRate)
            {
            }
            column(VendorTypeDescription; VendorTypeDescription)
            {
            }
            column(AmountPaid; GJLAmount)
            {
            }
            column(Vendor_Post_Code; Vendor."Post Code")
            {
            }
            column(Vendor_County; VendCountryName)
            {
            }
            column(ApplnAmountGJL; ApplnAmountGJL)
            {
            }
            column(AmountPayment; AmountPayment)
            {
            }
            column(CurrCodeBank; CurrCodeBank)
            {
            }
            column(BankExchangeRate; BankExchangeRate)
            {
            }
            column(PayeeName; PayeeName)
            {
            }
            column(CurrCodeLCY; GLSetup."LCY Code")
            {
            }
            column(UnappliedPaymentText; 'Unapplied payment')
            {
            }
            column(DescriptionLine_1__DescriptionLine_2_; DescriptionLine[1] + DescriptionLine[2])
            {
            }
            column(BalanceAmount; BalanceAmount)
            {
            }
            column(Total_Amount_______FORMAT_TotalAmount_; TotalAmount - GSTAmount)
            {
                DecimalPlaces = 2 : 2;
            }
            column(UnappliedAmount; UnappliedAmount)
            {
            }
            column(BalanceAmountLCY; BalanceAmountLCY)
            {
            }
            column(UnappliedAmountLCY; UnappliedAmountLCY)
            {
            }
            column(Total_AmountLCY_______FORMAT_TotalAmountLCY_; TotalAmountLCY)
            {
                DecimalPlaces = 2 : 2;
            }
            column(Gen__Journal_Line_Journal_Template_Name; "Journal Template Name")
            {
            }
            column(Gen__Journal_Line_Journal_Batch_Name; "Journal Batch Name")
            {
            }
            column(Gen__Journal_Line_Line_No_; "Line No.")
            {
            }
            column(Gen__Journal_Line_Posting_Date; "Posting Date")
            {
            }
            column(Gen__Journal_Line_Account_No_; "Account No.")
            {
            }
            column(gtxt_VendorAcct; gtxt_VendorAcct)
            {
            }
            column(Vendorno; "Gen. Journal Line"."Bill-to/Pay-to No.")
            {

            }
            column(PayToAddr1; PayToAddr1[1])
            {
            }
            column(PayToAddr2; PayToAddr1[2])
            {
            }
            column(PayToAddr3; PayToAddr1[3])
            {
            }
            column(PayToAddr4; PayToAddr1[4])
            {
            }
            column(PayToAddr5; PayToAddr1[5])
            {
            }
            column(PayToAddr6; Vendor1."No.")//PayToAddr[6])
            {
            }
            column(PayToAddr7; PayToAddr[7])
            {
            }
            column(PayToAddr8; PayToAddr[8])
            {
            }
            column(vReportTitle; vReportTitle)
            {
            }
            column(TotalAmountAfterGST; TotalAmount + GSTAmount)
            {
            }
            column(GSTAmount; GSTAmount)
            {
            }
            column(VAT_GenJournalLine; 'GST ' + gtxt_GSTPercent + '%')
            {
            }
            column(Gen__Journal_Line_AmountBfGST; Abs(Amount - "VAT Amount"))
            {
            }
            column(gtxt_BankCode; gtxt_BankCode)
            {
            }
            column(Amount; Amount)
            {
            }
            column(AmtInWords; AmtInWords[1] + ' ' + AmtInWords[2])
            {

            }
            column(VarCurrecnyName; VarCurrecnyName)
            {

            }
            column(CurrCode; CurrCode)
            {

            }
            column(VarComment; Comment)
            {

            }
            column(VarExchangeRate; VarExchangeRate)
            {

            }
            /*
            dataitem("Vendor Ledger Entry"; "Vendor Ledger Entry")
            {
                DataItemLink = "Applies-to ID" = FIELD("Document No."), "Vendor No." = FIELD("Account No.");
                DataItemTableView = SORTING("Entry No.");
                column(Vendor_Ledger_Entry__Posting_Date_; Format("Posting Date", 0, '<Day,2>/<Month,2>/<Year4>'))
                {
                }
                column(Vendor_Ledger_Entry__Amount_to_Apply_; -("Amount to Apply"))
                {
                }
                column(Desc2; Description)
                {
                }
                column(DocNo2; VdocumentNo)
                {
                }
                column(DocNo1; "Document No.")
                {
                }
                column(Sequence1; Sequence)
                {
                }
                column(CurrCodeVendLedgerEntry; CurrCodeVLE)
                {
                }
                column(ABS__Amount_to_Apply___Original_Currency_Factor__; -("Amount to Apply" / "Original Currency Factor"))
                {
                }
                column(ApplnAmountVLE; ApplnAmountVLE)
                {
                }
                column(Vendor_Ledger_Entry__Remaining_Amount_; "Remaining Amount")
                {
                }
                column(Vendor_Ledger_Entry__Amount__LCY__; "Amount (LCY)")
                {
                }
                column(VLEExchangeRate; VLEExchangeRate)
                {
                }
                column(Vendor_Ledger_Entry__Document_Date_; Format("Document Date", 0, '<Day,2>/<Month,2>/<Year4>'))
                {
                }
                column(Vendor_Ledger_Entry_Entry_No_; "Entry No.")
                {
                }
                column(Vendor_Ledger_Entry_Applies_to_ID; "Applies-to ID")
                {
                }
                column(Vendor_Ledger_Entry_Vendor_No_; "Vendor No.")
                {
                }
                column(OutputNo; OutputNo)
                {
                }
                trigger OnAfterGetRecord()
                begin
                    GLSetup.Get;
                    if "Currency Code" = '' then
                        CurrCodeVLE := GLSetup."LCY Code"
                    else
                        CurrCodeVLE := "Currency Code";

                    clear(VdocumentNo);
                    if "Vendor Ledger Entry"."Document Type" = "Vendor Ledger Entry"."Document Type"::"Credit Memo" then
                        VdocumentNo := "Vendor Ledger Entry"."Document No."
                    else
                        VdocumentNo := "Vendor Ledger Entry"."External Document No.";

                    if "Gen. Journal Line"."Account Type" = "Gen. Journal Line"."Account Type"::Vendor then begin
                        InitTextVariable;
                        FormatNoText(DescriptionLine, Abs(TotalAmount), '');
                        BalanceAmount := BalanceAmount + -("Amount to Apply");
                        BalanceAmountLCY := BalanceAmountLCY + -("Amount to Apply" * BankExchangeRate);
                        UnappliedAmount := TotalAmount - BalanceAmount;
                        UnappliedAmountLCY := TotalAmountLCY - BalanceAmountLCY;
                    end;

                    ValidExchRate := true;

                    if BankExchangeRate <> 0 then
                        ApplnAmountVLE := (ExchangeRateSource / BankExchangeRate) * -("Amount to Apply")
                    else
                        ApplnAmountVLE := -("Amount to Apply");

                    if CurrCodeVLE <> CurrCode then
                        ApplnAmountVLE := -CurrExchRate.ApplnExchangeAmtFCYToFCY(
                              "Posting Date", CurrCodeVLE, "Gen. Journal Line"."Currency Code", "Amount to Apply", ValidExchRate);

                    ApplnAmountGJL := 0;
                    AmountPayment := ApplnAmountGJL + ApplnAmountVLE;

                    Sequence := Sequence + 1;

                    GJLAmount := -("Amount to Apply" * ExchangeRate);

                    if "Gen. Journal Line"."Currency Factor" = 0 then
                        VLEExchangeRate := 1
                    else
                        VLEExchangeRate := 1 / "Gen. Journal Line"."Currency Factor";
                end;
            }
            */
            dataitem(DimensionLoop1; "Integer")
            {
                DataItemTableView = SORTING(Number) WHERE(Number = FILTER(1 ..));
                column(DimText; DimText)
                {
                }
                column(Number1_IntergerLine; DimensionLoop1.Number)
                {
                }
                column(HeaderDimensionsCaption; HeaderDimensionsCaptionLbl)
                {
                }
                trigger OnAfterGetRecord()
                begin
                    if Number = 1 then begin
                        if not DimSetEntry1.FindSet then
                            CurrReport.Break;
                    end else
                        if not Continue then
                            CurrReport.Break;

                    Clear(DimText);
                    Continue := false;
                    repeat
                        OldDimText := DimText;
                        if DimText = '' then
                            DimText := StrSubstNo('%1: %2', DimSetEntry1."Dimension Code", DimSetEntry1."Dimension Value Code")
                        else
                            DimText :=
                              StrSubstNo(
                                '%1, %2: %3', DimText,
                                DimSetEntry1."Dimension Code", DimSetEntry1."Dimension Value Code");
                        if StrLen(DimText) > MaxStrLen(OldDimText) then begin
                            DimText := OldDimText;
                            Continue := true;
                            exit;
                        end;
                    until DimSetEntry1.Next = 0;
                end;

                trigger OnPreDataItem()
                begin
                    if not gbol_ShowDimension then
                        CurrReport.Break;
                end;
            }

            trigger OnAfterGetRecord()
            var
                lrec_GenJnlLine: Record "Gen. Journal Line";
            begin
                if "Account Type" <> "Account Type"::"Bank Account" then
                    TotalLineAmount += "VAT Base Amount";

                if "Currency Code" = '' then
                    CurrCode := GLSetup."LCY Code"
                else
                    CurrCode := "Currency Code";
                CurrencyER.SetRange("Currency Code", "Currency Code");
                if CurrencyER.FindLast() then
                    VarExchangeRate := CurrencyER."Relational Exch. Rate Amount";

                GJCheckVendor.Reset;
                GJCheckVendor.SetRange(GJCheckVendor."Journal Template Name", "Journal Template Name");
                GJCheckVendor.SetRange(GJCheckVendor."Journal Batch Name", "Journal Batch Name");
                GJCheckVendor.SetRange(GJCheckVendor."Document No.", "Document No.");
                GJCheckVendor.SetRange(GJCheckVendor."Account Type", "Account Type"::Vendor);
                if GJCheckVendor.Find('-') then begin
                    ShowUnappliedAmount := true;
                    VendorTypeDescription := GJCheckVendor.Description;
                    if GJCheckVendor."Currency Factor" <> 0 then
                        ExchangeRateSource := 1 / GJCheckVendor."Currency Factor"
                    else
                        ExchangeRateSource := 1;
                end
                else begin
                    ShowUnappliedAmount := false;
                end;

                BnkAcc.reset;
                GJLAcc.Reset;
                GJLAcc.SetRange(GJLAcc."Journal Template Name", "Journal Template Name");
                GJLAcc.SetRange(GJLAcc."Journal Batch Name", "Journal Batch Name");
                GJLAcc.SetRange(GJLAcc."Document No.", "Document No.");
                if GJLAcc.Find('-') then
                    Clear(PayToAddr);

                Clear(InfoName);
                if "Gen. Journal Line"."Account Type" = "Gen. Journal Line"."Account Type"::Vendor then begin
                    if Vendor.Get("Gen. Journal Line"."Account No.") then begin
                        InfoName := Vendor.Name;

                    end else
                        InfoName := '';
                end else begin
                    if "Account Type" = "Account Type"::"G/L Account" then begin
                        GLAcc.Reset();
                        if GLAcc.Get("Account No.") then
                            InfoName := GLAcc.Name
                        else
                            InfoName := '';
                    end;
                    if "Account Type" = "Account Type"::"Bank Account" then begin
                        BankAccount.reset();
                        if BankAccount.Get("Account No.") then
                            InfoName := BankAccount.Name
                        else
                            InfoName := '';
                    end;
                    if "Account Type" = "Account Type"::Customer then begin
                        CustomerRec.Reset();
                        if CustomerRec.Get("Account No.") then
                            InfoName := CustomerRec.Name
                        else
                            InfoName := '';
                    end;

                end;

                if "VAT Base Amount" > 0 then
                    Gen_Total_Amount := "VAT Base Amount";

                if ("Account Type" <> "Account Type"::"G/L Account") then begin
                    BalanceAmount := BalanceAmount;
                    BalanceAmountLCY := BalanceAmountLCY;
                end else begin
                    BalanceAmount := BalanceAmount + Abs(Amount);
                    BalanceAmountLCY := BalanceAmountLCY + Abs("Amount (LCY)");
                end;

                TotalAmount := 0;
                TotalAmountLCY := 0;


                Clear(VarCurrecnyName);
                RecCurrency.Reset();
                RecCurrency.SetRange(Code, CurrCode);
                if RecCurrency.FindSet() then begin
                    VarCurrecnyName := RecCurrency.Description;
                end;

                //Multiple Lines
                GJLBank.Reset;
                GJLBank.SetRange(GJLBank."Journal Template Name", "Journal Template Name");
                GJLBank.SetRange(GJLBank."Journal Batch Name", "Journal Batch Name");
                GJLBank.SetRange(GJLBank."Document No.", "Document No.");
                GJLBank.SetRange(GJLBank."Account Type", GJLBank."Account Type"::"Bank Account");
                GJLBank.SetFilter("Bal. Account No.", '=%1', '');
                if GJLBank.Find('-') then begin
                    if GJLBank."Currency Code" = '' then
                        CurrCodeBank := GLSetup."LCY Code"
                    else
                        CurrCodeBank := GJLBank."Currency Code";
                    BankDate := GJLBank."Posting Date";

                    if GJLBank."Currency Factor" <> 0 then
                        BankExchangeRate := 1 / GJLBank."Currency Factor"
                    else
                        BankExchangeRate := 1;

                    repeat
                        TotalAmount := TotalAmount + Abs(GJLBank.Amount);
                        TotalAmountLCY := TotalAmountLCY + Abs(GJLBank."Amount (LCY)");
                    until GJLBank.Next = 0;
                end;
                InitTextVariable;
                FormatNoText(AmtInWords, Abs(Amount), CurrCode);

                //Single Lines
                GJLBank.Reset;
                GJLBank.SetRange(GJLBank."Journal Template Name", "Journal Template Name");
                GJLBank.SetRange(GJLBank."Journal Batch Name", "Journal Batch Name");
                GJLBank.SetRange(GJLBank."Document No.", "Document No.");
                GJLBank.SetFilter("Bal. Account No.", '<>%1', '');
                if GJLBank.Find('-') then
                    repeat
                        TotalAmount := TotalAmount + Abs(GJLBank.Amount);
                        TotalAmountLCY := TotalAmountLCY + Abs(GJLBank."Amount (LCY)");
                    until GJLBank.Next = 0;

                if "Account Type" <> "Account Type"::"Bank Account" then
                    Sequence := Sequence + 1
                else
                    Sequence := Sequence;

                InitTextVariable;
                FormatNoText(DescriptionLine, Abs(TotalAmount), '');
                UnappliedAmount := TotalAmount - BalanceAmount;
                UnappliedAmountLCY := TotalAmountLCY - BalanceAmountLCY;

                if "Account Type" = "Account Type"::"G/L Account" then
                    GJLAmount := Amount * ExchangeRate
                else
                    GJLAmount := 0;

                ValidExchRate := true;
                ApplnAmountGJL := CurrExchRate.ApplnExchangeAmtFCYToFCY(BankDate, CurrCode, CurrCodeBank, Amount, ValidExchRate);
                ApplnAmountVLE := 0;
                AmountPayment := ApplnAmountGJL + ApplnAmountVLE;

                VLEText := '';
                VLE.Reset;
                VLE.SetCurrentKey("Vendor No.", "Applies-to ID");
                VLE.SetRange("Vendor No.", "Account No.");
                VLE.SetRange("Applies-to ID", "Document No.");
                if VLE.IsEmpty then begin
                    VLEText := 'EMPTY';
                end;

                //Report Title
                vReportTitle := Format(vDocType);

                //Vendor Account
                Clear(gtxt_VendorAcct);
                if "Account Type" = "Account Type"::Vendor then
                    gtxt_VendorAcct := "Account No.";

                //Dimension set id
                DimSetEntry1.SetRange("Dimension Set ID", "Dimension Set ID");

                //GST Amount
                GSTAmount := GSTAmount + "Gen. Journal Line"."VAT Amount";

                //GST %
                Clear(gtxt_GSTPercent);
                lrec_GenJnlLine.Reset;
                lrec_GenJnlLine.SetRange("Journal Template Name", "Journal Template Name");
                lrec_GenJnlLine.SetRange("Journal Batch Name", "Journal Batch Name");
                lrec_GenJnlLine.SetRange("Document No.", "Document No.");
                lrec_GenJnlLine.SetFilter("VAT %", '<>%1', 0);
                if lrec_GenJnlLine.FindFirst then
                    gtxt_GSTPercent := Format(lrec_GenJnlLine."VAT %");

                //Bank Code
                Clear(gtxt_BankCode);
                lrec_GenJnlLine.Reset;
                lrec_GenJnlLine.SetRange("Journal Template Name", "Journal Template Name");
                lrec_GenJnlLine.SetRange("Journal Batch Name", "Journal Batch Name");
                lrec_GenJnlLine.SetRange("Document No.", "Document No.");
                lrec_GenJnlLine.SetRange("Account Type", "Account Type"::"Bank Account");
                lrec_GenJnlLine.SetFilter("Account No.", '<>%1', '');
                if lrec_GenJnlLine.FindFirst then
                    gtxt_BankCode := lrec_GenJnlLine."Account No.";

                lrec_GenJnlLine.Reset;
                lrec_GenJnlLine.SetRange("Journal Template Name", "Journal Template Name");
                lrec_GenJnlLine.SetRange("Journal Batch Name", "Journal Batch Name");
                lrec_GenJnlLine.SetRange("Document No.", "Document No.");
                lrec_GenJnlLine.SetRange("Bal. Account Type", "Bal. Account Type"::"Bank Account");
                lrec_GenJnlLine.SetFilter("Bal. Account No.", '<>%1', '');
                if lrec_GenJnlLine.FindFirst then begin
                    gtxt_BankCode := lrec_GenJnlLine."Bal. Account No.";
                    BankAccount.Reset();
                    if BankAccount.Get("Bal. Account No.") then
                        Name := BankAccount.Name;
                end;
                GenJnlLn.Reset();
                GenJnlLn.SetRange("Journal Template Name", "Gen. Journal Line"."Journal Template Name");
                GenJnlLn.SetRange("Journal Batch Name", "Gen. Journal Line"."Journal Batch Name");
                GenJnlLn.SetRange("Document No.", "Gen. Journal Line"."Document No.");
                GenJnlLn.SetFilter("Account Type", '%1', GenJnlLn."Account Type"::Vendor);
                if GenJnlLn.FindFirst() then begin
                    if Vendor1.get(GenJnlLn."Account No.") then begin
                        Clear(PayToAddr1);
                        PayToAddr1[1] := Vendor1.Name + ' ' + Vendor1."Name 2";
                        PayToAddr1[2] := Vendor1.Address;
                        // if Vendor1."Address 2" <> '' then
                        PayToAddr1[3] := Vendor1."Address 2";
                        if CountyRegion.Get(Vendor1."Country/Region Code") then
                            VendCountryName := CountyRegion.Name;
                        PayToAddr1[4] := VendCountryName + ' ' + Vendor1."Post Code";

                        CompressArray(PayToAddr1);
                    end;
                end;

            end;

            trigger OnPreDataItem()
            begin
                Clear(TotalLineAmount);

                CompInfo.Get;
                CompInfo.CalcFields(Picture);
                GLSetup.Get;

                if CountyRegion.Get(CompInfo."Country/Region Code") then
                    CompCountryName := CountyRegion.Name
                else
                    CompCountryName := '';

                if CountyRegion.Get(CompInfo."Country/Region Code") then
                    CompInfoCountry := CountyRegion.Name
                else
                    CompInfoCountry := '';

                LastFieldNo := FieldNo("Document No.");

                BalanceAmount := 0;
                BalanceAmountLCY := 0;
                UnappliedAmount := 0;
                UnappliedAmountLCY := 0;
                GSTAmount := 0;

                SetRange("Journal Template Name", JournalTemplateName);
                SetRange("Journal Batch Name", JournalBatchName);
                SetFilter("Document No.", '%1..%2', DocNo, DocNoLast);

                Sequence := 0;
                PayeeName := '';
                OutputNo := 1;
            end;
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(Control1000000001)
                {
                    ShowCaption = false;
                    field(JournalTemplateName; JournalTemplateName)
                    {
                        Caption = 'Template Name';
                        ApplicationArea = all;
                        Editable = ContactEditable;
                    }
                    field(JournalBatchName; JournalBatchName)
                    {
                        Caption = 'Batch Name';
                        ApplicationArea = all;
                        Editable = ContactEditable;
                    }
                    field(DocNo; DocNo)
                    {
                        Caption = 'Document No From';
                        ApplicationArea = all;
                        Editable = true;
                    }
                    field(DocNoLast; DocNoLast)
                    {
                        Caption = 'Document No To';
                        ApplicationArea = all;
                    }
                    field(PrintType; vDocType)
                    {
                        Caption = 'Print Type';
                        Visible = false;
                        ApplicationArea = all;
                    }
                    field(ShowDim; gbol_ShowDimension)
                    {
                        Caption = 'Show Dimension';
                        ApplicationArea = all;
                    }
                }
            }
        }

        actions
        {
        }
    }

    labels
    {
    }

    trigger OnInitReport()
    begin
        ContactEditable := false;
    end;

    trigger OnPreReport()
    begin
        CompanyInfo.Get;
        CompanyInfo.CalcFields(Picture);
    end;

    var
        TotalLineAmount: Decimal;
        CurrencyER: Record "Currency Exchange Rate";
        VdocumentNo: Code[30];
        AccName: text[100];
        VarCurrecnyName: Text;
        VarExchangeRate: Decimal;
        RecCurrency: Record Currency;
        AmtInWords: array[2] of Text;
        BankAccount: Record "Bank Account";
        CustomerRec: Record Customer;
        LastFieldNo: Integer;
        FooterPrinted: Boolean;
        TotalFor: Label 'Total for ';
        CompanyInfo: Record "Company Information";
        CentText: Text[30];
        OnesText: array[20] of Text[30];
        TensText: array[10] of Text[30];
        ExponentText: array[5] of Text[30];
        DescriptionLine: array[2] of Text;
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
        TotalAmount: Decimal;
        TotalAmountLCY: Decimal;
        DocNo: Code[20];
        DocNoLast: Code[20];
        AcNo: Code[20];
        AcNoLast: Code[20];
        JournalTemplateName: Code[20];
        JournalBatchName: Code[20];
        GJLBank: Record "Gen. Journal Line";
        BalanceAmount: Decimal;
        BalanceAmountLCY: Decimal;
        UnappliedAmount: Decimal;
        UnappliedAmountLCY: Decimal;
        CompInfo: Record "Company Information";
        ContactEditable: Boolean;
        GJL: Record "Gen. Journal Line";
        VLE: Record "Vendor Ledger Entry";
        Sequence: Integer;
        GJLAcc: Record "Gen. Journal Line";
        Vendor: Record Vendor;
        GLAcc: Record "G/L Account";
        BnkAcc: Record "Bank Account";
        InfoName: Text[50];
        vendorAddress: Text[250];
        Name: Text[50];
        ShowUnappliedAmount: Boolean;
        GJCheckVendor: Record "Gen. Journal Line";
        UsePayee: Boolean;
        PayeeName: Text[50];
        GLSetup: Record "General Ledger Setup";
        CurrCode: Code[10];
        CurrCodeVLE: Code[10];
        CurrCodeBank: Code[10];
        ExchangeRate: Decimal;
        ExchangeRateSource: Decimal;
        BankExchangeRate: Decimal;
        VendorTypeDescription: Text[100];
        GJLAmount: Decimal;
        VLEAmount: Decimal;
        AmountPaid: Decimal;
        UsePayeeName: Boolean;
        BankDate: Date;
        CurrExchRate: Record "Currency Exchange Rate";
        ValidExchRate: Boolean;
        Gen_Total_Amount: Decimal;
        AmountPayment: Decimal;
        ApplnAmountGJL: Decimal;
        ApplnAmountVLE: Decimal;
        VLEExchangeRate: Decimal;
        CountyRegion: Record "Country/Region";
        PAYMENT_VOUCHERCaptionLbl: Label 'PAYMENT VOUCHER';
        VOUCHER_DATE___CaptionLbl: Label 'VOUCHER DATE : ';
        VOUCHER_NUMBER___CaptionLbl: Label 'VOUCHER NUMBER : ';
        CHEQUE_NUMBER___CaptionLbl: Label 'CHEQUE NUMBER : ';
        AMOUNT_PAIDCaptionLbl: Label 'AMOUNT PAID';
        INVOICE_NUMBERCaptionLbl: Label 'INVOICE NUMBER';
        INVOICE_DATECaptionLbl: Label 'INVOICE DATE';
        BANK_ACCOUNT___CaptionLbl: Label 'BANK ACCOUNT : ';
        DESCRIPTIONCaptionLbl: Label 'DESCRIPTION';
        Issued_ByCaptionLbl: Label 'Issued By';
        Received_ByCaptionLbl: Label 'Received By';
        Approved_ByCaptionLbl: Label 'Approved By';
        Checked_ByCaptionLbl: Label 'Checked By';
        CompCountryName: Text[50];
        VendCountryName: Text[50];
        VLEText: Text[50];
        CompInfoCountry: Text[50];
        OutputNo: Integer;
        PayToAddr1: array[8] of Text;
        PayToAddr: array[8] of Text;

        vDocType: Option "Payment Voucher / Advice","Petty Cash Voucher";
        vReportTitle: Text[30];
        gtxt_VendorAcct: Text;
        gbol_ShowDimension: Boolean;
        DimSetEntry1: Record "Dimension Set Entry";
        DimSetEntry2: Record "Dimension Set Entry";
        Continue: Boolean;
        DimText: Text[120];
        OldDimText: Text[75];
        HeaderDimensionsCaptionLbl: Label 'Header Dimensions';
        GSTAmount: Decimal;
        gtxt_GSTPercent: Text;
        gtxt_BankCode: Text;
        GenJnlLn: Record "Gen. Journal Line";
        Vendor1: record Vendor;


    procedure FormatNoText(var NoText: array[2] of Text[80]; No: Decimal; CurrencyCode: Code[10])
    var
        PrintExponent: Boolean;
        Ones: Integer;
        Tens: Integer;
        Hundreds: Integer;
        Exponent: Integer;
        NoTextIndex: Integer;
    begin
        Clear(NoText);
        NoTextIndex := 1;
        if CurrCodeBank <> '' then
            NoText[1] := CurrCodeBank;

        if NoText[1] = '' then
            NoText[1] := CurrCode;

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
                if (No * 100) = 2 then CentText := 'TWO  ';
                if (No * 100) = 3 then CentText := 'THREE  ';
                if (No * 100) = 4 then CentText := 'FOUR  ';
                if (No * 100) = 5 then CentText := 'FIVE  ';
                if (No * 100) = 6 then CentText := 'SIX  ';
                if (No * 100) = 7 then CentText := 'SEVEN  ';
                if (No * 100) = 8 then CentText := 'EIGHT  ';
                if (No * 100) = 9 then CentText := 'NINE  ';

                if (No * 100) = 10 then CentText := 'TEN  ';
                if (No * 100) = 11 then CentText := 'ELEVEN  ';
                if (No * 100) = 12 then CentText := 'TWELVE  ';
                if (No * 100) = 13 then CentText := 'THIRTEEN  ';
                if (No * 100) = 14 then CentText := 'FOURTEEN  ';
                if (No * 100) = 15 then CentText := 'FIFTEEN  ';
                if (No * 100) = 16 then CentText := 'SIXTEEN  ';
                if (No * 100) = 17 then CentText := 'SEVENTEEN  ';
                if (No * 100) = 18 then CentText := 'EIGHTTEEN  ';
                if (No * 100) = 19 then CentText := 'NINETEEN  ';

                if (No * 100) = 20 then CentText := 'TWENTY  ';
                if (No * 100) = 21 then CentText := 'TWENTY ONE  ';
                if (No * 100) = 22 then CentText := 'TWENTY TWO  ';
                if (No * 100) = 23 then CentText := 'TWENTY THREE  ';
                if (No * 100) = 24 then CentText := 'TWENTY FOUR  ';
                if (No * 100) = 25 then CentText := 'TWENTY FIVE  ';
                if (No * 100) = 26 then CentText := 'TWENTY SIX  ';
                if (No * 100) = 27 then CentText := 'TWENTY SEVEN  ';
                if (No * 100) = 28 then CentText := 'TWENTY EIGHT  ';
                if (No * 100) = 29 then CentText := 'TWENTY NINE  ';

                if (No * 100) = 30 then CentText := 'THIRTY  ';
                if (No * 100) = 31 then CentText := 'THIRTY ONE  ';
                if (No * 100) = 32 then CentText := 'THIRTY TWO  ';
                if (No * 100) = 33 then CentText := 'THIRTY THREE  ';
                if (No * 100) = 34 then CentText := 'THIRTY FOUR  ';
                if (No * 100) = 35 then CentText := 'THIRTY FIVE  ';
                if (No * 100) = 36 then CentText := 'THIRTY SIX  ';
                if (No * 100) = 37 then CentText := 'THIRTY SEVEN  ';
                if (No * 100) = 38 then CentText := 'THIRTY EIGHT  ';
                if (No * 100) = 39 then CentText := 'THIRTY NINE  ';

                if (No * 100) = 40 then CentText := 'FOURTY  ';
                if (No * 100) = 41 then CentText := 'FOURTY ONE  ';
                if (No * 100) = 42 then CentText := 'FOURTY TWO  ';
                if (No * 100) = 43 then CentText := 'FOURTY THREE  ';
                if (No * 100) = 44 then CentText := 'FOURTY FOUR  ';
                if (No * 100) = 45 then CentText := 'FOURTY FIVE  ';
                if (No * 100) = 46 then CentText := 'FOURTY SIX  ';
                if (No * 100) = 47 then CentText := 'FOURTY SEVEN  ';
                if (No * 100) = 48 then CentText := 'FOURTY EIGHT  ';
                if (No * 100) = 49 then CentText := 'FOURTY NINE  ';

                if (No * 100) = 50 then CentText := 'FIFTY  ';
                if (No * 100) = 51 then CentText := 'FIFTY ONE  ';
                if (No * 100) = 52 then CentText := 'FIFTY TWO  ';
                if (No * 100) = 53 then CentText := 'FIFTY THREE  ';
                if (No * 100) = 54 then CentText := 'FIFTY FOUR  ';
                if (No * 100) = 55 then CentText := 'FIFTY FIVE  ';
                if (No * 100) = 56 then CentText := 'FIFTY SIX  ';
                if (No * 100) = 57 then CentText := 'FIFTY SEVEN  ';
                if (No * 100) = 58 then CentText := 'FIFTY EIGHT  ';
                if (No * 100) = 59 then CentText := 'FIFTY NINE  ';

                if (No * 100) = 60 then CentText := 'SIXTY  ';
                if (No * 100) = 61 then CentText := 'SIXTY ONE  ';
                if (No * 100) = 62 then CentText := 'SIXTY TWO  ';
                if (No * 100) = 63 then CentText := 'SIXTY THREE  ';
                if (No * 100) = 64 then CentText := 'SIXTY FOUR  ';
                if (No * 100) = 65 then CentText := 'SIXTY FIVE  ';
                if (No * 100) = 66 then CentText := 'SIXTY SIX  ';
                if (No * 100) = 67 then CentText := 'SIXTY SEVEN  ';
                if (No * 100) = 68 then CentText := 'SIXTY EIGHT  ';
                if (No * 100) = 69 then CentText := 'SIXTY NINE  ';

                if (No * 100) = 70 then CentText := 'SEVENTY  ';
                if (No * 100) = 71 then CentText := 'SEVENTY ONE  ';
                if (No * 100) = 72 then CentText := 'SEVENTY TWO  ';
                if (No * 100) = 73 then CentText := 'SEVENTY THREE  ';
                if (No * 100) = 74 then CentText := 'SEVENTY FOUR  ';
                if (No * 100) = 75 then CentText := 'SEVENTY FIVE  ';
                if (No * 100) = 76 then CentText := 'SEVENTY SIX  ';
                if (No * 100) = 77 then CentText := 'SEVENTY SEVEN  ';
                if (No * 100) = 78 then CentText := 'SEVENTY EIGHT  ';
                if (No * 100) = 79 then CentText := 'SEVENTY NINE  ';

                if (No * 100) = 80 then CentText := 'EIGHTY  ';
                if (No * 100) = 81 then CentText := 'EIGHTY ONE  ';
                if (No * 100) = 82 then CentText := 'EIGHTY TWO  ';
                if (No * 100) = 83 then CentText := 'EIGHTY THREE  ';
                if (No * 100) = 84 then CentText := 'EIGHTY FOUR  ';
                if (No * 100) = 85 then CentText := 'EIGHTY FIVE  ';
                if (No * 100) = 86 then CentText := 'EIGHTY SIX  ';
                if (No * 100) = 87 then CentText := 'EIGHTY SEVEN  ';
                if (No * 100) = 88 then CentText := 'EIGHTY EIGHT  ';
                if (No * 100) = 89 then CentText := 'EIGHTY NINE  ';

                if (No * 100) = 90 then CentText := 'NINETY  ';
                if (No * 100) = 91 then CentText := 'NINETY ONE  ';
                if (No * 100) = 92 then CentText := 'NINETY TWO  ';
                if (No * 100) = 93 then CentText := 'NINETY THREE  ';
                if (No * 100) = 94 then CentText := 'NINETY FOUR  ';
                if (No * 100) = 95 then CentText := 'NINETY FIVE  ';
                if (No * 100) = 96 then CentText := 'NINETY SIX  ';
                if (No * 100) = 97 then CentText := 'NINETY SEVEN  ';
                if (No * 100) = 98 then CentText := 'NINETY EIGHT  ';
                if (No * 100) = 99 then CentText := 'NINETY NINE  ';
            end;
        end;
        if (No * 100) = 0 then
            AddToNoText(NoText, NoTextIndex, PrintExponent, 'AND')
        else
            AddToNoText(NoText, NoTextIndex, PrintExponent, Text028);
        AddToNoText(NoText, NoTextIndex, PrintExponent, 'CENTS ' + CentText + 'ONLY');
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

    procedure InitTextVariable()
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

    procedure SetPar(ParJournalTemplateName: Code[20]; ParJournalBatchName: Code[20]; var ParDocNo: Code[20])
    begin
        JournalTemplateName := ParJournalTemplateName;
        JournalBatchName := ParJournalBatchName;
        DocNo := ParDocNo;
        DocNoLast := ParDocNo;
    end;

    procedure ReturnDoc(): Code[20]
    begin
        exit(DocNo);
    end;

    procedure ReturnDocLast(): Code[20]
    begin
        exit(DocNoLast);
    end;
}