pageextension 50164 "Purchase Quote Ext" extends "Purchase Quote"
{
    layout
    {
        addafter(Status)
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
                    trigger OnValidate()
                    begin
                        Rec.SetWorkDescription(WorkDescription);
                    end;
                }
            }
        }
        moveafter(General; "Invoice Details", "Shipping and Payment")
    }
    trigger OnAfterGetRecord()
    begin
        WorkDescription := Rec.GetWorkDescription();
    end;

    var
        WorkDescription: Text;
}
