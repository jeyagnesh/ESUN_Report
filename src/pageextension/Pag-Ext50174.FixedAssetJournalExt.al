pageextension 50174 FixedAssetJournalExt extends "Fixed Asset Journal"
{
    actions
    {
        addlast(processing)
        {
            action(FA_Voucher)
            {
                ApplicationArea = all;
                Caption = 'Fixed Asset Journal';
                Promoted = true;
                PromotedCategory = Process;
                Visible = EsunButtonVisible;
                Ellipsis = true;
                Image = Print;
                trigger OnAction()
                var
                    FAJournalLine: Record "FA Journal Line";
                    generalvoucher: Report "Fixed Asset Voucher";
                begin
                    RecCompInfo.Get();
                    if RecCompInfo.Name = 'Esun International Pte Ltd' then begin
                        CurrPage.SetSelectionFilter(FAJournalLine);
                        if FAJournalLine.FindSet() then begin
                            generalvoucher.SetPar(FAJournalLine."Journal Template Name", FAJournalLine."Journal Batch Name", FAJournalLine."Document No.");
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
