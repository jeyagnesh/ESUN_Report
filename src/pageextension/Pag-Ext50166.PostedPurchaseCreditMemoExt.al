pageextension 50166 "PostedPurchaseCreditMemo Ext" extends "Posted Purchase Credit Memo"
{
    layout
    {
        addafter("Vendor Cr. Memo No.")
        {
            field("Purchase Order No."; Rec."Purchase Order No.")
            {
                ApplicationArea = All;
            }
            field("Vendor Order No."; Rec."Vendor Order No.")
            {
                ApplicationArea = All;
            }
            field("Vendor Invoice No."; Rec."Vendor Invoice No.")
            {
                ApplicationArea = All;
            }
        }
        addafter("No. Printed")
        {
            group("Work Description")
            {
                Caption = 'Work Description';
                field(WorkDescription; WorkDescription)
                {
                    ApplicationArea = All;
                    MultiLine = true;
                    ShowCaption = false;
                    ToolTip = 'Specifies the products or service being offered.';
                    Editable = false;
                    trigger OnValidate()
                    begin
                        Rec.SetWorkDescription(WorkDescription);
                    end;
                }
            }
        }
    }
    trigger OnAfterGetRecord()
    begin
        WorkDescription := Rec.GetWorkDescription();
    end;

    var
        WorkDescription: Text;
}