report 50225 "Himetal Receipt Voucher"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Himetal-ReportLayout/50225.ReportLayout.ReceiptVoucher.rdl';
    ApplicationArea = All;
    Caption = 'Receipt Voucher';
    PreviewMode = PrintLayout;
 
    dataset
    {
        dataitem("Gen. Journal Line"; "Gen. Journal Line")
        {
            DataItemTableView = SORTING("Journal Template Name", "Journal Batch Name", "Posting Date", "Document No.") WHERE("Document Type" = FILTER(Payment | Refund), "Account Type" = FILTER(<> "Bank Account"));
            PrintOnlyIfDetail = false;
            column(UserName; UserName)
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
            column(CompanyInfo_Name; CompanyInfo.Name)
            {
            }
            column(CompInfoName; CompanyInfo.Name)
            {
            }
            column(CompInfoName2; CompanyInfo."Name 2")
            {
            }
            column(CompInfoAddress; CompanyInfo.Address)
            {
            }
            column(CompInfoAddress2; CompanyInfo."Address 2")
            {
            }
            column(CompInfoCounty; CompanyInfo.County)
            {
            }
            column(CompInfoFaxNo; CompanyInfo."Fax No.")
            {
            }
            column(CompInfoPhoneNo; CompanyInfo."Phone No.")
            {
            }
            column(CompInfoPostCode; CompanyInfo."Post Code")
            {
            }
            column(CompInfoCountryRegionCode; CompanyInfo."Country/Region Code")
            {
            }
            column(CompInfoVATRegsNo; CompanyInfo."VAT Registration No.")
            {
            }
            column(CompInfoHomePage; CompanyInfo."Home Page")
            {
            }
            column(CompInfoEmail; CompanyInfo."E-Mail")
            {
            }
            column(CompInfoCity; CompanyInfo.City)
            {
            }
            column(CompInfoCountry; CompInfoCountry)
            {
            }
            column(CompInfoCountryName; CompCountryName)
            {
            }
            column(CompInfoRegsNo; CompanyInfo."Registration No.")
            {
            }
            column(PaymentTermsCode; PaymentTerms.Description) { }
            column(Gen__Journal_Line__Document_No__; "Document No.")
            {
            }
            column(Gen__Journal_Line__Posting_Date_; Format("Posting Date", 0, '<Day,2>/<Month,2>/<Year4>'))
            {
            }
            column(Gen__Journal_Line__External_Document_No__; "External Document No.")
            {
            }
            column(GenJournalLineCheckNo; "External Document No.")
            {
            }
            column(GenJournalLineAccountNo; "Account No.")
            {
            }
            column(CustomerNo; CustomerNo)
            {
            }
            column(GJLBank__Account_No__; GJLBank."Account No.")
            {
            }
            column(CompInfo_Picture; CompInfo.Picture)
            {
            }
            column(CompanyInfo_picture2; CompanyInfo."Picture 2")
            {

            }
            column(CompanyInfo_picture3; CompanyInfo."Picture 3")
            {

            }
            column(CompanyInfo_picture4; CompanyInfo."Picture 4")
            {

            }
            column(RecCompInfo_Picture1; CompInfo.Picture1) { }
            column(CompanyInfo__Address_2; CompanyInfo."Address 2")
            {
            }
            column(CompanyInfo_City_________CompanyInfo__Post_Code_; CompanyInfo.City + ' ' + CompanyInfo."Post Code")
            {
            }
            column(FORMAT__Posting_Date__0___Day_2___Month_2___Year4____; Format("Posting Date", 0, '<Day,2>/<Month,2>/<Year4>'))
            {
            }
            column(GenJournalLine_DocumentNo; "Document No.")
            {
            }
            column(Gen__Journal_Line_Amount; Abs(Amount))
            {
            }
            column(Desc1; Description + ' ' + ' ' + "Description 2")
            {
            }
            column(Gen__Journal_Line__Account_Type_; "Account Type")
            {
            }
            column(Sequence; Sequence)
            {
            }
            column(Customer_Name_________Customer__Name_2_; Customer.Name + '' + Customer."Name 2")
            {
            }
            column(Customer_Address; Customer.Address)
            {
            }
            column(Customer__Address_2_; Customer."Address 2")
            {
            }
            column(Customer_City; Customer.City)
            {
            }
            column(Customer_Contact; Customer.Contact)
            {
            }
            column(Customer_Fax; Customer."Fax No.")
            {
            }
            column(Customer_Phone; Customer."Phone No.")
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
            column(CurrCodeGenJourLine; CurrCode)
            {
            }
            column(InfoName; InfoName)
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
            column(AmountPaid; GJLAmount)
            {
            }
            column(ExchangeRate; ExchangeRate)
            {
            }
            column(CustomerTypeDescription; CustomerTypeDescription)
            {
            }
            column(Customer_County; CountyRegion.Name)
            {
            }
            column(Customer_Post_Code; Customer."Post Code")
            {
            }
            column(ApplnAmountGJL; -ApplnAmountGJL)
            {
            }
            column(CurrCodeBank; CurrCodeBank)
            {
            }
            column(BankExchangeRate; BankExchangeRate)
            {
            }
            column(CurrCodeLCY; GLSetup."LCY Code")
            {
            }
            column(PayeeName; '')
            {
            }
            column(UnappliedPaymentText; 'Unapplied payment')
            {
            }
            column(External_Document_No_; "External Document No.")
            {

            }
            column(DescriptionLine_1__________DescriptionLine_2_; DescriptionLine[1] + ' ' + DescriptionLine[2])
            {
            }
            column(BalanceAmount; BalanceAmount)
            {
            }
            column(Balance; GLAcc.Balance)
            {

            }
            column(BalanceAccountofBalAmount; BalanceAccountofBalAmount)
            {

            }
            column(BalanceofBalAccount; BalanceofBalAccount)
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
            column(GenJournalLineAmountLCY; -("Amount (LCY)"))
            {
            }
            column(CustAddr1; CustAddr[1])
            {
            }
            column(CustAddr2; CustAddr[2])
            {
            }
            column(CustAddr3; CustAddr[3])
            {
            }
            column(CustAddr4; CustAddr[4])
            {
            }
            column(CustAddr5; CustAddr[5])
            {
            }
            column(CustAddr6; CustAddr[6])
            {
            }
            column(CustAddr7; CustAddr[7])
            {
            }
            column(CustAddr8; CustAddr[8])
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
            column(gtxt_CustAcct; gtxt_CustAcct)
            {
            }
            column(CLEText; CLEText)
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
            column(Bal__Account_No_; "Bal. Account No.")
            {

            }
            column(Bal__Account_Type; "Bal. Account Type")
            {

            }
            dataitem("Cust. Ledger Entry"; "Cust. Ledger Entry")
            {
                DataItemLink = "Applies-to ID" = FIELD("Document No."), "Customer No." = FIELD("Account No.");
                DataItemTableView = SORTING("Entry No.");
                column(Cust_Ledger_Entry__Posting_Date_; Format("Posting Date", 0, '<Day,2>/<Month,2>/<Year4>'))
                {
                }
                column(Cust_Ledger_Entry__Amount_to_Apply_; "Amount to Apply")
                {
                }
                column(Desc2; Description)
                {
                }
                column(DocNo2; "Document No.")//"External Document No.")
                {
                }
                column(Sequence1; Sequence)
                {
                }
                column(CurrCodeCustLedgerEntry; CurrCodeCLE)
                {
                }
                column(ABS__Amount_to_Apply___Original_Currency_Factor__; "Amount to Apply" / "Original Currency Factor")
                {
                }
                column(ApplnAmountCLE; ApplnAmountCLE)
                {
                }
                column(CLEExchangeRate; CLEExchangeRate)
                {
                }
                column(Cust_ledger_entry_Document_Type; "Document Type") { }

                column(Cust__Ledger_Entry__Remaining_Amount_; "Remaining Amount")
                {
                }
                column(Cust_Ledger_Entry__Document_Date_; Format("Document Date", 0, '<Day,2>/<Month,2>/<Year4>'))
                {
                }
                column(Cust__Ledger_Entry_Entry_No_; "Entry No.")
                {
                }
                column(Cust__Ledger_Entry_Applies_to_ID; "Applies-to ID")
                {
                }
                column(Cust__Ledger_Entry_Customer_No_; "Customer No.")
                {
                }
                column(OutputNo; OutputNo)
                {
                }
                trigger OnAfterGetRecord()
                begin
                    if "Currency Code" = '' then
                        CurrCodeCLE := GLSetup."LCY Code"
                    else
                        CurrCodeCLE := "Currency Code";

                    if "Gen. Journal Line"."Account Type" = "Gen. Journal Line"."Account Type"::Customer then begin
                        InitTextVariable;
                        FormatNoText(DescriptionLine, Abs(TotalAmount), '');
                        BalanceAmount := BalanceAmount + ("Amount to Apply");
                        BalanceAmountLCY := BalanceAmountLCY + ("Amount to Apply" * BankExchangeRate);
                        UnappliedAmount := TotalAmount - BalanceAmount;
                        UnappliedAmountLCY := TotalAmountLCY - BalanceAmountLCY;
                    end;

                    ValidExchRate := true;
                    if BankExchangeRate <> 0 then
                        ApplnAmountCLE := (ExchangeRateSource / BankExchangeRate) * ("Amount to Apply")
                    else
                        ApplnAmountCLE := ("Amount to Apply");

                    if CurrCodeCLE <> CurrCode then
                        ApplnAmountCLE := CurrExchRate.ApplnExchangeAmtFCYToFCY(
                              "Posting Date", CurrCodeCLE, "Gen. Journal Line"."Currency Code", "Amount to Apply", ValidExchRate);

                    ApplnAmountGJL := 0;
                    AmountPayment := ApplnAmountGJL + ApplnAmountCLE;
                    Sequence := Sequence + 1;
                    GJLAmount := -("Amount to Apply" * ExchangeRate);

                    if "Gen. Journal Line"."Currency Factor" = 0 then
                        CLEExchangeRate := 1
                    else
                        CLEExchangeRate := 1 / "Gen. Journal Line"."Currency Factor";
                end;
            }
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
                PaymentTerms.Reset();
                if PaymentTerms.Get("Gen. Journal Line"."Payment Terms Code") then;

                Clear(BalanceAccountofBalAmount);
                Clear(BalanceofBalAccount);

                if "Currency Code" = '' then
                    CurrCode := GLSetup."LCY Code"
                else
                    CurrCode := "Currency Code";

                GJCheckCustomer.Reset;
                GJCheckCustomer.SetRange(GJCheckCustomer."Journal Template Name", "Journal Template Name");
                GJCheckCustomer.SetRange(GJCheckCustomer."Journal Batch Name", "Journal Batch Name");
                GJCheckCustomer.SetRange(GJCheckCustomer."Document No.", "Document No.");
                GJCheckCustomer.SetRange(GJCheckCustomer."Account Type", "Account Type"::Customer);
                if GJCheckCustomer.Find('-') then begin
                    ShowUnappliedAmount := true;
                    CustomerNo := GJCheckCustomer."Account No.";
                    CustomerTypeDescription := GJCheckCustomer.Description;
                    if GJCheckCustomer."Currency Factor" <> 0 then
                        ExchangeRateSource := 1 / GJCheckCustomer."Currency Factor"
                    else
                        ExchangeRateSource := 1;
                end else begin
                    ShowUnappliedAmount := false;
                end;

                GJLAcc.Reset;
                GJLAcc.SetRange(GJLAcc."Journal Template Name", "Journal Template Name");
                GJLAcc.SetRange(GJLAcc."Journal Batch Name", "Journal Batch Name");
                GJLAcc.SetRange(GJLAcc."Document No.", "Document No.");

                if GJLAcc.Find('-') then
                    Clear(CustAddr);
                if "Account Type" = "Account Type"::Customer then begin
                    if Customer.Get("Account No.") then begin
                        InfoName := Customer.Name;
                        if CountyRegion.Get(Customer."Country/Region Code") then;

                        Clear(CustAddr);
                        CustAddr[1] := Customer.Name + ' ' + Customer."Name 2";
                        CustAddr[2] := Customer.Address;
                        CustAddr[3] := Customer."Address 2";
                        CustAddr[4] := CountyRegion.Name + ' ' + Customer."Post Code";
                        if Customer.Contact <> '' then
                            CustAddr[5] := 'Attention: ' + Customer.Contact;
                        if Customer."Phone No." <> '' then
                            CustAddr[6] := 'Tel: ' + Customer."Phone No.";
                        if Customer."Fax No." <> '' then
                            CustAddr[7] := 'Fax: ' + Customer."Fax No.";
                        CompressArray(CustAddr);
                    end else
                        InfoName := '';
                end else begin
                    if "Account Type" = "Account Type"::"G/L Account" then
                        if GLAcc.Get("Account No.") then
                            InfoName := GLAcc.Name
                        else
                            InfoName := '';
                end;

                if ("Account Type" <> "Account Type"::"G/L Account") then begin
                    BalanceAmount := BalanceAmount;
                    BalanceAmountLCY := BalanceAmountLCY;
                end else begin
                    BalanceAmount := BalanceAmount + Abs(Amount);
                    BalanceAmountLCY := BalanceAmountLCY + Abs("Amount (LCY)");
                end;

                TotalAmount := 0;
                TotalAmountLCY := 0;
                GJLBank.Reset;
                GJLBank.SetRange(GJLBank."Journal Template Name", "Journal Template Name");
                GJLBank.SetRange(GJLBank."Journal Batch Name", "Journal Batch Name");
                GJLBank.SetRange(GJLBank."Document No.", "Document No.");
                GJLBank.SetRange(GJLBank."Account Type", GJLBank."Account Type"::"Bank Account");
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
                RecCurrency.Reset();
                RecCurrency.SetRange(Code, CurrCode);
                if RecCurrency.FindSet() then begin
                    VarCurrecnyName := RecCurrency.Description;
                end;
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

                if GLAcc.Get("Bal. Account No.") then begin
                    GLAcc.CalcFields(Balance);
                    Balance := GLAcc.Balance;
                    BalanceAccountofBalAmount := "Bal. VAT Base Amount";
                    BalanceofBalAccount := Balance + BalanceAccountofBalAmount;
                end;

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
                ApplnAmountCLE := 0;
                AmountPayment := ApplnAmountGJL + ApplnAmountCLE;

                CLE.Reset;
                CLE.SetCurrentKey("Customer No.", "Applies-to ID");
                CLE.SetRange("Customer No.", "Account No.");
                CLE.SetRange("Applies-to ID", "Document No.");
                if CLE.IsEmpty then begin
                    CLEText := 'EMPTY';
                end;

                //Report Title
                vReportTitle := Format(vDocType);

                //Vendor Account
                Clear(gtxt_CustAcct);
                if "Account Type" = "Account Type"::Customer then
                    gtxt_CustAcct := "Account No.";

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
                if lrec_GenJnlLine.FindFirst then
                    gtxt_BankCode := lrec_GenJnlLine."Bal. Account No.";
            end;

            trigger OnPreDataItem()
            begin
                CompInfo.Get;
                CompInfo.CalcFields(Picture);
                CompInfo.CalcFields(Picture1);
                CompanyInfo.Get;

                if CountyRegion.Get(CompanyInfo."Country/Region Code") then
                    CompInfoCountry := CountyRegion.Name
                else
                    CompInfoCountry := '';
                if TableCountryRegion.Get(CompanyInfo."Country/Region Code") then
                    CompCountryName := TableCountryRegion.Name;
                GLSetup.Get;
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

        CountyRegion.Reset;
        if CountyRegion.Get(CompanyInfo."Country/Region Code") then;

        VarCompInfo[1] := CompanyInfo.Name;
        VarCompInfo[2] := CompanyInfo.Address;

        if CompanyInfo."Address 2" <> '' then
            VarCompInfo[3] := CompanyInfo."Address 2" + ', ' + CountyRegion.Name + ' ' + CompanyInfo."Post Code"
        else
            VarCompInfo[3] := CountyRegion.Name + ' ' + CompanyInfo."Post Code";

        VarCompInfo[4] := 'TEL: ' + CompanyInfo."Phone No." + '  FAX: ' + CompanyInfo."Fax No.";
        VarCompInfo[5] := 'E-MAIL: ' + CompanyInfo."E-Mail" + ' WEBSITE: ' + CompanyInfo."Home Page";

        if CompanyInfo."Registration No." <> '' then
            VarCompInfo[6] := 'Company Registration No.: ' + CompanyInfo."Registration No."
        else
            VarCompInfo[6] := '';

        CompressArray(VarCompInfo);

        TableUser.RESET;
        TableUser.SETRANGE("User Name", USERID);
        IF TableUser.FINDFIRST THEN
            UserName := TableUser."Full Name"
        ELSE
            UserName := '';
    end;

    var
        LastFieldNo: Integer;
        VarCurrecnyName: Text;
        RecCurrency: Record Currency;
        AmtInWords: array[2] of Text;
        FooterPrinted: Boolean;
        TotalFor: Label 'Total for ';
        CompanyInfo: Record "Company Information";
        TableUser: Record "User";
        UserName: Text[50];
        CentText: Text[30];
        OnesText: array[20] of Text[30];
        TensText: array[10] of Text[30];
        ExponentText: array[5] of Text[30];
        DescriptionLine: array[2] of Text[80];
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
        JournalTemplateName: Code[20];
        JournalBatchName: Code[20];
        GJLBank: Record "Gen. Journal Line";
        BalanceAmount: Decimal;
        Balance: Decimal;
        Bal__VAT_Amount: Decimal;
        BalanceAccountofBalAmount: Decimal;
        BalanceofBalAccount: Decimal;
        BalanceAmountLCY: Decimal;
        UnappliedAmount: Decimal;
        UnappliedAmountLCY: Decimal;
        CompInfo: Record "Company Information";
        ContactEditable: Boolean;
        GJL: Record "Gen. Journal Line";
        CLE: Record "Cust. Ledger Entry";
        Sequence: Integer;
        GJLAcc: Record "Gen. Journal Line";
        Customer: Record Customer;
        GLAcc: Record "G/L Account";
        InfoName: Text[50];
        ShowUnappliedAmount: Boolean;
        GJCheckCustomer: Record "Gen. Journal Line";
        CustomerNo: Code[20];
        GLSetup: Record "General Ledger Setup";
        CurrCode: Code[10];
        CurrCodeCLE: Code[10];
        CurrCodeBank: Code[10];
        ExchangeRate: Decimal;
        ExchangeRateSource: Decimal;
        BankExchangeRate: Decimal;
        CustomerTypeDescription: Text[100];
        GJLAmount: Decimal;
        VLEAmount: Decimal;
        AmountPaid: Decimal;
        BankDate: Date;
        CurrExchRate: Record "Currency Exchange Rate";
        ValidExchRate: Boolean;
        AmountPayment: Decimal;
        ApplnAmountGJL: Decimal;
        ApplnAmountCLE: Decimal;
        CLEExchangeRate: Decimal;
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
        Desc1: Text[20];
        Desc2: Text[20];
        Issued_ByCaptionLbl: Label 'Issued By';
        Received_ByCaptionLbl: Label 'Received By';
        Approved_ByCaptionLbl: Label 'Approved By';
        Checked_ByCaptionLbl: Label 'Checked By';
        CompInfoCountry: Text[50];
        TableCountryRegion: Record "Country/Region";
        CompCountryName: Text[50];
        OutputNo: Integer;
        CustAddr: array[8] of Text[200];
        vDocType: Option "Payment Voucher / Advice","Petty Cash Voucher";
        vReportTitle: Text[30];
        gtxt_CustAcct: Text;
        gbol_ShowDimension: Boolean;
        DimSetEntry1: Record "Dimension Set Entry";
        DimSetEntry2: Record "Dimension Set Entry";
        Continue: Boolean;
        DimText: Text[120];
        OldDimText: Text[75];
        GSTAmount: Decimal;
        gtxt_GSTPercent: Text;
        gtxt_BankCode: Text;
        HeaderDimensionsCaptionLbl: Label 'Header Dimensions';
        CLEText: Text;
        VarCompInfo: array[20] of Text;
        PaymentTerms: Record "Payment Terms";


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
        NoText[1] := '' + CurrCodeBank;

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
                if (No * 100) = 41 then CentText := 'FOURTY ONE CENTS ';
                if (No * 100) = 42 then CentText := 'FOURTY TWO CENTS ';
                if (No * 100) = 43 then CentText := 'FOURTY THREE CENTS ';
                if (No * 100) = 44 then CentText := 'FOURTY FOUR CENTS ';
                if (No * 100) = 45 then CentText := 'FOURTY FIVE CENTS ';
                if (No * 100) = 46 then CentText := 'FOURTY SIX CENTS ';
                if (No * 100) = 47 then CentText := 'FOURTY SEVEN CENTS ';
                if (No * 100) = 48 then CentText := 'FOURTY EIGHT CENTS ';
                if (No * 100) = 49 then CentText := 'FOURTY NINE CENTS ';

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
            AddToNoText(NoText, NoTextIndex, PrintExponent, '');
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
