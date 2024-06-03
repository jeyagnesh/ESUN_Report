report 50171 "Unshipped Items"
{
    ApplicationArea = All;
    Caption = 'Esun - Unshipped Items';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = './ReportLayout/50171.ReportLayout.UnshippedItems.rdl';
    dataset
    {
        dataitem("Sales Line"; "Sales Line")
        {
            DataItemTableView = sorting("Document Type", "Document No.", "Line No.") where("Document Type" = const(Order), "Outstanding Quantity" = filter(> 0));
            RequestFilterFields = "Sell-to Customer No.", "Document Type", "Outstanding Quantity";
            column(CustomerName; SalesHeader."Sell-to Customer Name") { }
            column(CustomerNo; SalesHeader."Sell-to Customer No.") { }
            column(ItemNo; "No.") { }
            column(ItemDescription; Description) { }
            column(SalesContractNo; SalesHeader."Sales Contract No.") { }
            column(SalesOrderNo; "Document No.") { }
            column(Quantity; "Outstanding Quantity") { }
            column(PostingDate; "Posting Date") { }
            column(Picture; CompanyInformation.Picture) { }
            column(Picture2; CompanyInformation."Picture 2") { }
            column(Picture3; CompanyInformation."Picture 3") { }
            column(Picture4; CompanyInformation."Picture 4") { }
            column(Picture1; CompanyInformation.Picture1) { }
            trigger OnAfterGetRecord()
            begin
                if SalesHeader.Get("Sales Line"."Document Type", "Sales Line"."Document No.") then;

                CompanyInformation.Get();
                CompanyInformation.CalcFields(Picture);
                CompanyInformation.CalcFields(Picture1);
            end;

           
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                    
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
        trigger OnOpenPage()        
        begin          
            "Sales Line".SetFilter("Document Type", '%1', "Sales Line"."Document Type"::Order);
            "Sales Line".SetFilter("Outstanding Quantity", '>%1', 0);
        end;
    }
    var
        SalesHeader: Record "Sales Header";
        CompanyInformation: Record "Company Information";   
        gdhjsavf:report 25;   
}
