reportextension 50152 InventoryPosting_Test extends "Inventory Posting - Test"
{
    dataset
    {
        add("Item Journal Line")
        {
            column(Item_Journal_Line__Location_Code; "Location Code") { }
        }
    }
}
