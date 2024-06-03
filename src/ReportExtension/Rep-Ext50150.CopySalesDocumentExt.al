reportextension 50150 "CopySalesDocument Ext" extends "Copy Sales Document"
{
    dataset
    {
    }
    requestpage
    {
        trigger OnQueryClosePage(CloseAction: Action): Boolean
        begin
            if CloseAction = ACTION::OK then
                if FromDocNo <> '' then begin
                    SalesHeader.Validate("Document No.", FromDocNo);
                    SalesHeader.Modify();
                end;
        end;
        
    }
}
