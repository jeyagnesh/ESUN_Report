pageextension 50162 PstSlsCreditMemo extends "Posted Sales Credit Memo"
{
    layout
    {

    }
    actions
    {

    }
    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        RecCompInfo.get();
        HiMetalButtonVisible := false;
        if RecCompInfo.Name = 'Himetal Enterprise Pte Ltd' then
            HiMetalButtonVisible := true;
    end;

    var
        RecCompInfo: Record "Company Information";
        HiMetalButtonVisible: Boolean;
}