tableextension 50157 "Item Ext" extends Item
{
    fields
    {
        field(50150; "Qty On SO Not Shipped"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = sum("Sales Line"."Outstanding Quantity" where("Document Type" = const(Order), "No." = field("No."), "Outstanding Quantity" = filter(> 0)));
            Editable = false;
        }
    }
}
