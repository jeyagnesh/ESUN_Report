report 50164 "General Voucher"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    Caption = 'General Journal';
    RDLCLayout = './ReportLayout/50164.ReportLayout.GeneralVoucher.rdl';

    dataset
    {
        dataitem("Gen. Journal Line"; "Gen. Journal Line")
        {
            DataItemTableView = SORTING("Journal Template Name", "Journal Batch Name", "Posting Date", "Document No.");
            // DataItemTableView = SORTING("Journal Template Name", "Journal Batch Name", "Line No.");
            PrintOnlyIfDetail = false;
            column(Journal_Template_Name; "Journal Template Name")
            {

            }
            column(CompInfo_Picture; CompInfo.Picture)
            {

            }
            column(CompInfo_Picture1; CompInfo.Picture1)
            {

            }
            column(CompInfo_Picture2; CompInfo."Picture 2")
            {

            }
            column(CompInfo_Picture3; CompInfo."Picture 3")
            {

            }
            column(CompInfo_Picture4; CompInfo."Picture 4")
            {

            }
            column(CompInfo_Name; CompInfo.Name)
            {

            }
            column(Journal_Batch_Name; "Journal Batch Name")
            {

            }
            column(Posting_Date; Format("Posting Date", 0, '<Day,2>/<Month,2>/<Year4>'))
            {

            }
            column(Document_Date; Format("Document Date", 0, '<Day,2>/<Month,2>/<Year4>'))
            {

            }
            column(Currency_Code; "Currency Code")
            {

            }
            column(CurrCodeGenJourLine; CurrCode)
            {
            }
            column(CurrCode; CurrCode)
            {

            }
            column(Document_No_; "Document No.")
            {

            }
            column(External_Document_No_; "External Document No.")
            {

            }
            column(UserId; UserId)
            {

            }
            column(Document_Type; "Document Type")
            {

            }
            column(Account_Id; "Account Id")
            {

            }
            column(Account_No_; "Account No.")
            {

            }
            column(Account_Type; "Account Type")
            {

            }
            column(GLAcc_Name; InfoName)//GLAcc.Name)
            {
            }
            column(Description; Description)
            {

            }
            column(Description_2; "Description 2")
            {

            }
            column(InfoName; InfoName)
            {

            }
            column(Amount; Amount)
            {

            }
            column(Amount_LCY_; "Amount (LCY)")
            {

            }
            column(VAT_Amount; "VAT Amount")
            {

            }
            column(User_Id; "Gen. Journal Line".SystemId)
            {

            }
            column(AmountInWords; DescriptionLine[1] + DescriptionLine[2])
            {
            }
            trigger OnPreDataItem()
            begin
                CompInfo.Get;
                CompInfo.CalcFields(Picture);
                CompInfo.CalcFields(Picture1);
                SetRange("Journal Template Name", JournalTemplateName);
                SetRange("Journal Batch Name", JournalBatchName);
                SetFilter("Document No.", '%1..%2', DocNo, DocNoLast);

                //GLAccNetChange.DeleteAll();
            end;

            trigger OnAfterGetRecord()
            var
                user: Record "User Setup";
            begin
                Clear(user);
                GLSetup.Get();
                UserSetup.Reset();

                UserSetup.SetRange(UserSetup."User ID", UserId);
                if user.FindFirst then
                    UserId := user."User ID";

                if "Currency Code" = '' then
                    CurrCode := GLSetup."LCY Code"
                else
                    CurrCode := "Currency Code";

                GenJournalLine.Reset();
                GenJournalLine.SetRange("Journal Template Name", JournalTemplateName);
                GenJournalLine.SetRange("Journal Batch Name", JournalBatchName);
                GenJournalLine.SetFilter("Document No.", '%1..%2', DocNo, DocNoLast);
                if GenJournalLine.FindSet() then
                    repeat
                        TotalAmount += GenJournalLine.Amount;
                    until GenJournalLine.Next() = 0;
                InitTextVariable;
                FormatNoText(DescriptionLine, Abs(TotalAmount), '');


                Clear(InfoName);
                if "Account Type" = "Account Type"::Vendor then begin
                    if Vendor.Get("Account No.") then
                        InfoName := Vendor.Name
                    else
                        InfoName := '';
                end else
                    if "Account Type" = "Account Type"::"G/L Account" then begin
                        if GLAcc.Get("Account No.") then
                            InfoName := GLAcc.Name
                        else
                            InfoName := '';
                    end;
                if "Account Type" = "Account Type"::"Bank Account" then begin
                    if BankAccount.Get("Account No.") then
                        InfoName := BankAccount.Name
                    else
                        InfoName := '';
                end;
                if "Account Type" = "Account Type"::"Fixed Asset" then begin
                    if FixedAsset.Get("Account No.") then
                        InfoName := FixedAsset.Description
                    else
                        InfoName := '';
                end;

                /*
                                if "Account Type" = "Account Type"::"G/L Account" then begin
                                    if GLAcc.Get("Account No.") then begin
                                        InfoName := GLAcc.Name;
                                        if GLAcc."Reconciliation Account" then
                                            ReconcileGLAccNo("Account No.", Round("Amount (LCY)" / (1 + "VAT %" / 100)));
                                    end;
                                end;

                                if "Account Type" = "Account Type"::"Bank Account" then begin
                                    if BankAcc.Get("Account No.") then begin
                                        if BankAccPostingGr.Get(BankAcc."Bank Acc. Posting Group") then
                                            if BankAccPostingGr."G/L Account No." <> '' then
                                                ReconcileGLAccNo(
                                                  BankAccPostingGr."G/L Account No.",
                                                  Round("Amount (LCY)" / (1 + "VAT %" / 100)));
                                    end;
                                end;
                                */
            end;
        }
        /*
        dataitem(ReconcileLoop; "Integer")
        {
            DataItemTableView = SORTING(Number);
            column(GLAccNetChangeNo; GLAccNetChange."No.")
            {
            }
            column(Number; Number) { }
            column(GLAccNetChangeName; GLAccNetChange.Name)
            {
            }
            column(GLAccNetChangeNetChangeJnl; GLAccNetChange."Net Change in Jnl.")
            {
            }
            column(GLAccNetChangeBalafterPost; GLAccNetChange."Balance after Posting")
            {
            }
            column(ReconciliationCaption; ReconciliationCap)
            {
            }
            column(NoCaption; NoCap)
            {
            }
            column(NameCaption; NameCap)
            {
            }
            column(NetChangeinJnlCaption; NetChangeinJnlCap)
            {
            }
            column(BalafterPostingCaption; BalafterPostingCap)
            {
            }
            trigger OnAfterGetRecord()
            begin
                if Number = 1 then
                    GLAccNetChange.Find('-')
                else
                    GLAccNetChange.Next();
            end;

            trigger OnPostDataItem()
            begin
                GLAccNetChange.DeleteAll();
            end;

            trigger OnPreDataItem()
            begin
                SetRange(Number, 1, GLAccNetChange.Count);
            end;
        }
        */
    }
    requestpage
    {
        layout
        {
            area(Content)
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
            area(processing)
            {
                action(ActionName)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    var
        Vendor: record Vendor;
        FixedAsset: Record "Fixed Asset";
        BankAccount: Record "Bank Account";
        myInt: Integer;
        UserId: Code[50];
        GLSetup: Record "General Ledger Setup";
        UserSetup: Record "User Setup";
        CurrCode: Code[10];
        CurrCodeCLE: Code[10];
        GLAcc: Record "G/L Account";
        InfoName: Text[50];
        CompInfo: Record "Company Information";
        DocNo: Code[20];
        DocNoLast: Code[20];
        JournalTemplateName: Code[20];
        JournalBatchName: Code[20];
        ContactEditable: Boolean;
        GenJournalLine: Record "Gen. Journal Line";
        TotalAmount: Decimal;
        CentText: Text[30];
        OnesText: array[20] of Text[30];
        TensText: array[10] of Text[30];
        ExponentText: array[5] of Text[30];
        DescriptionLine: array[2] of Text;
        CurrCodeBank: Code[10];
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
    /*
    GLAccNetChange: Record "G/L Account Net Change" temporary;
    BankAcc: Record "Bank Account";
    BankAccPostingGr: Record "Bank Account Posting Group";
    ReconciliationCap: Label 'Reconciliation';
    NoCap: Label 'No.';
    NameCap: Label 'Name';
    NetChangeinJnlCap: Label 'Net Change in Jnl.';
    BalafterPostingCap: Label 'Balance after Posting';

local procedure ReconcileGLAccNo(GLAccNo: Code[20]; ReconcileAmount: Decimal)
begin
    if not GLAccNetChange.Get(GLAccNo) then begin
        GLAcc.Get(GLAccNo);
        GLAcc.CalcFields("Balance at Date");
        GLAccNetChange.Init();
        GLAccNetChange."No." := GLAcc."No.";
        GLAccNetChange.Name := GLAcc.Name;
        GLAccNetChange."Balance after Posting" := GLAcc."Balance at Date";
        GLAccNetChange.Insert();
    end;
    GLAccNetChange."Net Change in Jnl." := GLAccNetChange."Net Change in Jnl." + ReconcileAmount;
    GLAccNetChange."Balance after Posting" := GLAccNetChange."Balance after Posting" + ReconcileAmount;
    GLAccNetChange.Modify();
end;
*/
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
                if (No * 100) = 41 then CentText := 'FOURTY ONE ';
                if (No * 100) = 42 then CentText := 'FOURTY TWO ';
                if (No * 100) = 43 then CentText := 'FOURTY THREE ';
                if (No * 100) = 44 then CentText := 'FOURTY FOUR ';
                if (No * 100) = 45 then CentText := 'FOURTY FIVE ';
                if (No * 100) = 46 then CentText := 'FOURTY SIX ';
                if (No * 100) = 47 then CentText := 'FOURTY SEVEN ';
                if (No * 100) = 48 then CentText := 'FOURTY EIGHT ';
                if (No * 100) = 49 then CentText := 'FOURTY NINE ';

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
}