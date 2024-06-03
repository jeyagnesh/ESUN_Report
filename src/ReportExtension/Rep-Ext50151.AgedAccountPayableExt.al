reportextension 50151 AgedAccountPayableExt extends "Aged Accounts Payable"
{
    dataset
    {
        add(TempVendortLedgEntryLoop)
        {
            column(ExternalDocNo; VendorLedgEntryEndingDate1."External Document No.") { }
        }
        modify(TempVendortLedgEntryLoop)
        {
            trigger OnAfterAfterGetRecord()
            var
                myInt: Integer;
            begin
                VendorLedgEntryEndingDate1 := TempVendorLedgEntry;
            end;
        }
    }
    var
        VendorLedgEntryEndingDate1: Record "Vendor Ledger Entry";
}
