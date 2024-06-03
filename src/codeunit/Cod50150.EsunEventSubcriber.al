codeunit 50150 EsunEventSubcriber
{
    [EventSubscriber(ObjectType::Page, Page::"Posted Sales Inv. - Update", 'OnAfterRecordChanged', '', false, false)]
    local procedure OnAfterRecordChanged_1355(var SalesInvoiceHeader: Record "Sales Invoice Header"; xSalesInvoiceHeader: Record "Sales Invoice Header"; var IsChanged: Boolean)
    begin
        IsChanged := (SalesInvoiceHeader."Payment Terms Code" <> xSalesInvoiceHeader."Payment Terms Code")
    end;

    [EventSubscriber(ObjectType::Codeunit, CodeUnit::"Sales Inv. Header - Edit", 'OnOnRunOnBeforeTestFieldNo', '', false, false)]
    local procedure OnOnRunOnBeforeTestFieldNo_1409(var SalesInvoiceHeader: Record "Sales Invoice Header"; SalesInvoiceHeaderRec: Record "Sales Invoice Header")
    begin
        SalesInvoiceHeader."Payment Terms Code" := SalesInvoiceHeaderRec."Payment Terms Code";
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Purch.-Post", 'OnBeforePurchCrMemoHeaderInsert', '', false, false)]
    local procedure BeforePurchCrMemoHeaderInsert(var PurchCrMemoHdr: Record "Purch. Cr. Memo Hdr."; var PurchHeader: Record "Purchase Header"; CommitIsSupressed: Boolean)
    begin
        PurchCrMemoHdr.SetWorkDescription(PurchHeader.GetWorkDescription());
        PurchCrMemoHdr.Validate("Vendor Order No.", PurchHeader."Vendor Order No.");
        PurchCrMemoHdr.Validate("Vendor Invoice No.", PurchHeader."Vendor Invoice No.");
    end;

    //08042024
    [EventSubscriber(ObjectType::Report, Report::"Copy Sales Document", OnAfterValidateIncludeHeaderProcedure, '', false, false)]
    local procedure CopySalesDocument_OnAfterValidateIncludeHeaderProcedure(var Sender: Report "Copy Sales Document"; var IncludeHeader: Boolean; var RecalculateLines: Boolean; SalesHeader: Record "Sales Header"; FromDocType: Enum "Sales Document Type From")
    begin
        if (FromDocType = FromDocType::Order) or (FromDocType = FromDocType::Quote) or (FromDocType = FromDocType::"Return Order") or (FromDocType = FromDocType::"Credit Memo") then
            IncludeHeader := true;
    end;


    [EventSubscriber(ObjectType::Report, Report::"Copy Purchase Document", OnBeforeValidateIncludeHeader, '', false, false)]
    local procedure "Copy Purchase Document_OnBeforeValidateIncludeHeader"(var Sender: Report "Copy Purchase Document"; var DoIncludeHeader: Boolean; DocType: Option; var PurchHeader: Record "Purchase Header"; FromPurchHeader: Record "Purchase Header")
    begin
        if (DocType = 0) or (DocType = 2) or (DocType = 4) or (DocType = 5) then
            DoIncludeHeader := true;
    end;
    //08042024


}