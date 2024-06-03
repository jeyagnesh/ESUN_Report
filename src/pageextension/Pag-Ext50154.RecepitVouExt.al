pageextension 50154 RecepitVouExt extends "Cash Receipt Journal"
{
    layout
    {

    }
    actions
    {
        addafter("Test Report")
        {
            action(RecptVoucher)
            {
                ApplicationArea = all;
                Visible = EsunButtonVisible;
                Caption = 'Receipt Voucher';
                Ellipsis = true;
                Image = Print;
                Promoted = true;
                PromotedCategory = Category6;
                trigger OnAction()
                var
                    CashReceiptJournal: Record "Gen. Journal Line";
                    ReceiptVoucher: Report "Receipt Voucher";
                begin
                    RecCompInfo.Get();
                    if RecCompInfo.Name = 'Esun International Pte Ltd' then begin
                        CurrPage.SetSelectionFilter(CashReceiptJournal);
                        if CashReceiptJournal.FindSet() then begin
                            ReceiptVoucher.SetPar(CashReceiptJournal."Journal Template Name", CashReceiptJournal."Journal Batch Name", CashReceiptJournal."Document No.");
                            ReceiptVoucher.Run();
                        end;
                    end
                end;
            }
            action(HimetalRecptVoucher)
            {
                ApplicationArea = all;
                Visible = HimetalButtonVisible;
                Caption = 'Receipt Voucher';
                Ellipsis = true;
                Image = Print;
                Promoted = true;
                PromotedCategory = Category6;
                trigger OnAction()
                var
                    CashReceiptJournal: Record "Gen. Journal Line";
                    ReceiptVoucher: Report "Himetal Receipt Voucher";
                begin
                    RecCompInfo.Get();
                    if RecCompInfo.Name = 'Himetal Enterprise Pte Ltd' then begin
                        CurrPage.SetSelectionFilter(CashReceiptJournal);
                        if CashReceiptJournal.FindSet() then begin
                            ReceiptVoucher.SetPar(CashReceiptJournal."Journal Template Name", CashReceiptJournal."Journal Batch Name", CashReceiptJournal."Document No.");
                            ReceiptVoucher.Run();
                        end;
                    end
                end;
            }
            action(RecptVoucher2)
            {
                ApplicationArea = all;
                Visible = EsunButtonVisible;
                Caption = 'Receipt Voucher 2';
                Ellipsis = true;
                Image = Print;
                Promoted = true;
                PromotedCategory = Category6;
                trigger OnAction()
                var
                    CashReceiptJournal: Record "Gen. Journal Line";
                    ReceiptVoucher2: Report "Receipt Voucher2";
                begin
                    RecCompInfo.Get();
                    if RecCompInfo.Name = 'Esun International Pte Ltd' then begin
                        CurrPage.SetSelectionFilter(CashReceiptJournal);
                        if CashReceiptJournal.FindSet() then begin
                            ReceiptVoucher2.SetPar(CashReceiptJournal."Journal Template Name", CashReceiptJournal."Journal Batch Name", CashReceiptJournal."Document No.");
                            ReceiptVoucher2.Run();
                        end;
                    end
                end;
            }
            action(HimetalRecptVoucher2)
            {
                ApplicationArea = all;
                Visible = HimetalButtonVisible;
                Caption = 'Receipt Voucher 2';
                Ellipsis = true;
                Image = Print;
                Promoted = true;
                PromotedCategory = Category6;
                trigger OnAction()
                var
                    CashReceiptJournal: Record "Gen. Journal Line";
                    ReceiptVoucher: Report "Himetal Receipt Voucher2";
                begin
                    RecCompInfo.Get();
                    if RecCompInfo.Name = 'Himetal Enterprise Pte Ltd' then begin
                        CurrPage.SetSelectionFilter(CashReceiptJournal);
                        if CashReceiptJournal.FindSet() then begin
                            ReceiptVoucher.SetPar(CashReceiptJournal."Journal Template Name", CashReceiptJournal."Journal Batch Name", CashReceiptJournal."Document No.");
                            ReceiptVoucher.Run();
                        end;
                    end
                end;
            }
        }
    }
    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        RecCompInfo.get();

        EsunButtonVisible := false;
        if (RecCompInfo.Name = 'Esun International Pte Ltd') then
            EsunButtonVisible := true;

        HimetalButtonVisible := false;
        if RecCompInfo.Name = 'Himetal Enterprise Pte Ltd' then
            HimetalButtonVisible := true;
    end;

    var
        EsunButtonVisible: Boolean;
        RecCompInfo: Record "Company Information";
        HimetalButtonVisible: Boolean;
}