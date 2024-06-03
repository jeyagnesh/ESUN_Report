pageextension 50151 "Ext Payment Journal" extends "Payment Journal"
{
    layout
    {
        addafter("Payment Reference")
        {
            field("VAT %"; Rec."VAT %")
            {
                ApplicationArea = all;
            }
        }
    }
    actions
    {
        addafter("Test Report")
        {
            action(PaymentVoucher)
            {
                ApplicationArea = All;
                Visible = EsunButtonVisible;
                Caption = 'Payment Voucher';
                Ellipsis = true;
                Image = Print;
                Promoted = true;
                PromotedCategory = Category8;
                trigger OnAction()
                var
                    RecGenJournLine: Record "Gen. Journal Line";
                    ReportPaymentJorLine: Report "Payment Voucher";
                begin
                    RecCompInfo.Get();
                    if RecCompInfo.Name = 'Esun International Pte Ltd' then begin
                        CurrPage.SetSelectionFilter(RecGenJournLine);
                        if RecGenJournLine.FindSet() then begin
                            ReportPaymentJorLine.SetPar(RecGenJournLine."Journal Template Name", RecGenJournLine."Journal Batch Name", RecGenJournLine."Document No.");
                            ReportPaymentJorLine.Run();
                        end;
                    end;
                end;
            }
            action(HimetalPaymentVoucher)
            {
                ApplicationArea = All;
                Visible = HimetalButtonVisible;
                Caption = 'Payment Voucher';
                Ellipsis = true;
                Image = Print;
                Promoted = true;
                PromotedCategory = Category8;
                trigger OnAction()
                var
                    RecGenJournLine: Record "Gen. Journal Line";
                    ReportPaymentJorLine: Report "Himetal Payment Voucher";
                begin
                    RecCompInfo.Get();
                    if RecCompInfo.Name = 'Himetal Enterprise Pte Ltd' then begin
                        CurrPage.SetSelectionFilter(RecGenJournLine);
                        if RecGenJournLine.FindSet() then begin
                            ReportPaymentJorLine.SetPar(RecGenJournLine."Journal Template Name", RecGenJournLine."Journal Batch Name", RecGenJournLine."Document No.");
                            ReportPaymentJorLine.Run();
                        end;
                    end;
                end;
            }
            action(PaymentVoucher2)
            {
                ApplicationArea = All;
                Visible = EsunButtonVisible;
                Caption = 'Payment Voucher - GL';
                Ellipsis = true;
                Image = Print;
                Promoted = true;
                PromotedCategory = Category8;
                trigger OnAction()
                var
                    RecGenJournLine: Record "Gen. Journal Line";
                    ReportPaymentJorLine: Report "Payment Voucher2";
                begin
                    RecCompInfo.Get();
                    if RecCompInfo.Name = 'Esun International Pte Ltd' then begin
                        CurrPage.SetSelectionFilter(RecGenJournLine);
                        if RecGenJournLine.FindSet() then begin
                            ReportPaymentJorLine.SetPar(RecGenJournLine."Journal Template Name", RecGenJournLine."Journal Batch Name", RecGenJournLine."Document No.");
                            ReportPaymentJorLine.Run();
                        end;
                    end;
                end;
            }
            action(HimetalPaymentVoucher2)
            {
                ApplicationArea = All;
                Visible = HimetalButtonVisible;
                Caption = 'Payment Voucher 2';
                Ellipsis = true;
                Image = Print;
                Promoted = true;
                PromotedCategory = Category8;
                trigger OnAction()
                var
                    RecGenJournLine: Record "Gen. Journal Line";
                    ReportPaymentJorLine: Report "Himetal Payment Voucher2";
                begin
                    RecCompInfo.Get();
                    if RecCompInfo.Name = 'Himetal Enterprise Pte Ltd' then begin
                        CurrPage.SetSelectionFilter(RecGenJournLine);
                        if RecGenJournLine.FindSet() then begin
                            ReportPaymentJorLine.SetPar(RecGenJournLine."Journal Template Name", RecGenJournLine."Journal Batch Name", RecGenJournLine."Document No.");
                            ReportPaymentJorLine.Run();
                        end;
                    end;
                end;
            }
        }
    }
    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        RecCompInfo.get();

        EsunButtonVisible := false;
        if RecCompInfo.Name = 'Esun International Pte Ltd' then
            EsunButtonVisible := true;

        HimetalButtonVisible := false;
        if RecCompInfo.Name = 'Himetal Enterprise Pte Ltd' then
            HimetalButtonVisible := true;
    end;

    var
        EsunButtonVisible: Boolean;
        HimetalButtonVisible: Boolean;
        RecCompInfo: Record "Company Information";
}