pageextension 50150 ExtCompanyInformation extends "Company Information"
{
    layout
    {
        addafter(Picture)
        {
            field("Picture 2"; TenantMedia.Content)
            {
                ApplicationArea = All;
                trigger OnValidate()
                var
                    InStr: InStream;
                begin
                    TenantMedia.Content.CreateInStream(InStr);
                    Rec."Picture 2".ImportStream(InStr, TenantMedia."File Name");
                    CurrPage.SaveRecord;
                end;
            }
            field("Picture 3"; TenantMedia1.Content)
            {
                ApplicationArea = All;
                trigger OnValidate()
                var
                    InStr: InStream;
                begin
                    TenantMedia1.Content.CreateInStream(InStr);
                    Rec."Picture 3".ImportStream(InStr, TenantMedia1."File Name");
                    CurrPage.SaveRecord;
                end;
            }
            field("Picture 4"; TenantMedia2.Content)
            {
                ApplicationArea = All;
                trigger OnValidate()
                var
                    InStr: InStream;
                begin
                    TenantMedia2.Content.CreateInStream(InStr);
                    Rec."Picture 4".ImportStream(InStr, TenantMedia."File Name");
                    CurrPage.SaveRecord;
                end;
            }
        }
    }
    actions
    {

    }
    var
        DialogTitle: Label 'Select a picture to upload';
        TenantMedia: Record "Tenant Media";
        TenantMedia1: Record "Tenant Media";
        TenantMedia2: Record "Tenant Media";

    trigger OnAfterGetRecord()
    var
        MediaId: Guid;
    begin
        if Rec."Picture 2".HasValue then
            if TenantMedia.Get(Rec."Picture 2".MediaId) then
                TenantMedia.CalcFields(Content);
        if Rec."Picture 3".HasValue then
            if TenantMedia1.Get(Rec."Picture 3".MediaId) then
                TenantMedia1.CalcFields(Content);
        if Rec."Picture 4".HasValue then
            if TenantMedia2.Get(Rec."Picture 4".MediaId) then
                TenantMedia2.CalcFields(Content);
    end;
}