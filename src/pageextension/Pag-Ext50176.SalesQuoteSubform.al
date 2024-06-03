pageextension 50176 SalesQuoteSubform extends "Sales Quote Subform"
{
    layout
    {
        addafter("Location Code")
        {
            field("Exstock/indent"; Rec."Exstock/indent")
            {
                ApplicationArea = all;
            }
        }
    }
}
