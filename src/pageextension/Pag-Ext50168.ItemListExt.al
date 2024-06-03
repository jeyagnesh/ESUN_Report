pageextension 50168 "ItemList Ext" extends "Item List"
{
    layout
    {
        addbefore(InventoryField)
        {
            field("Qty On SO Not Shipped"; Rec."Qty On SO Not Shipped")
            {
                ApplicationArea = All;
            }
        }
    }
}
