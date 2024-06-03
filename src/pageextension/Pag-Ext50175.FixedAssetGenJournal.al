pageextension 50175 FixedAssetGenJournal extends "Fixed Asset G/L Journal"
{
    actions
    {
        // Add changes to page actions here
        addlast(processing)
        {
            action(generalvoucher)
            {
                ApplicationArea = All;
                Caption = 'General Journal';
                Visible = EsunButtonVisible;
                Ellipsis = true;
                Image = Print;
                Promoted = true;
                PromotedCategory = Process;
                trigger OnAction()
                var
                    generaljournalline: Record "Gen. Journal Line";
                    generalvoucher: Report "General Voucher";
                begin
                    RecCompInfo.Get();
                    if RecCompInfo.Name = 'Esun International Pte Ltd' then begin
                        CurrPage.SetSelectionFilter(generaljournalline);
                        if generaljournalline.FindSet() then begin
                            generalvoucher.SetPar(generaljournalline."Journal Template Name", generaljournalline."Journal Batch Name", generaljournalline."Document No.");
                            generalvoucher.Run();
                        end;
                    end;
                end;
            }
            action(PaymentVoucherGL)
            {
                ApplicationArea = All;
                Caption = 'Payment Voucher - GL';
                Visible = EsunButtonVisible;
                Ellipsis = true;
                Image = Print;
                Promoted = true;
                PromotedCategory = Process;
                trigger OnAction()
                var
                    generaljournalline: Record "Gen. Journal Line";
                    generalvoucher: Report "Fixed Asset Voucher";
                begin
                    RecCompInfo.Get();
                    if RecCompInfo.Name = 'Esun International Pte Ltd' then begin
                        CurrPage.SetSelectionFilter(generaljournalline);
                        if generaljournalline.FindSet() then begin
                            generalvoucher.SetPar(generaljournalline."Journal Template Name", generaljournalline."Journal Batch Name", generaljournalline."Document No.");
                            generalvoucher.Run();
                        end;
                    end;
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
        HiMetalButtonVisible := false;
        if RecCompInfo.Name = 'Esun International Pte Ltd' then
            EsunButtonVisible := true;
        if RecCompInfo.Name = 'Himetal Enterprise Pte Ltd' then
            HiMetalButtonVisible := true;
    end;

    var
        EsunButtonVisible: Boolean;
        HiMetalButtonVisible: Boolean;
        RecCompInfo: Record "Company Information";
}
