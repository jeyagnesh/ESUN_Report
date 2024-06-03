pageextension 50177 SalesOrderLines extends "Sales Order Subform"
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
