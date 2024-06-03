pageextension 50157 BankAccountCard extends "Bank Account Card"
{
    layout
    {
        addafter("Home Page")
        {
            field(IntermediaryBank; Rec."Intermediary Bank")
            {
                ApplicationArea = all;
                Caption = 'Intermediary Bank';
            }
            field(IntermediarySwiftCode; Rec."Intermediary Bank Swift Code")
            {
                ApplicationArea = all;
                TableRelation = "SWIFT Code";
                Caption = 'Intermediary Swift Code';
            }
            field(PayNow; Rec."Pay Now")
            {
                ApplicationArea = all;
                Caption = 'Pay Now';
            }
        }
    }
    actions
    {
        // Add changes to page actions here
    }
    var
        myInt: Integer;
}