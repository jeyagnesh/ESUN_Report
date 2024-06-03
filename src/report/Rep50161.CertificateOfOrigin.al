report 50161 CertificateOfOrigin
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = CertOfOrigin;
    PreviewMode = PrintLayout;
    dataset
    {
        dataitem(Header; "Sales Header")
        {
            RequestFilterFields = "No.";
            DataItemTableView = where("Document Type" = filter(Invoice));
            dataitem(CopyLoop; Integer)
            {
                DataItemTableView = sorting(Number);
                dataitem(PageLoop; Integer)
                {
                    DataItemTableView = sorting(Number) where(Number = const(2));
                    column(SalesHeader_No; Header."No.")
                    {

                    }
                    column(CompanyInfoPicture; RecCompInfo.Picture)
                    {

                    }
                    column(CompanyInfoPicture2; RecCompInfo."Picture 2")
                    {

                    }
                    column(CompanyInfoPicture3; RecCompInfo."Picture 3")
                    {

                    }
                    column(CompanyInfoPicture4; RecCompInfo."Picture 4")
                    {

                    }
                    column(Document_Date; Format(Header."Document Date", 0, '<Day,2>-<Month Text,3>-<Year>'))
                    {

                    }
                    column(ExternalDocument_No; Header."External Document No.")
                    {

                    }
                    column(YourContract_No; Header."External Document No.")
                    {

                    }
                    column(Contract_No; Header."Contract No.")
                    {

                    }
                    column(varBillTo1; varBillTo[1])
                    {

                    }
                    column(varBillTo2; varBillTo[2])
                    {

                    }
                    column(varBillTo3; varBillTo[3])
                    {

                    }
                    column(varBillTo4; varBillTo[4])
                    {

                    }
                    column(varBillTo5; varBillTo[5])
                    {

                    }
                    column(varBillTo6; varBillTo[6])
                    {

                    }
                    column(varShipTo1; varShipTo[1])
                    {

                    }
                    column(varShipTo2; varShipTo[2])
                    {

                    }
                    column(varShipTo3; varShipTo[3])
                    {

                    }
                    column(varShipTo4; varShipTo[4])
                    {

                    }
                    column(varShipTo5; varShipTo[5])
                    {

                    }
                    column(varShipTo6; varShipTo[6])
                    {

                    }
                    column(VarCompInfo1; VarCompInfo[1])
                    {

                    }
                    column(VarCompInfo2; VarCompInfo[2])
                    {

                    }
                    column(VarCompInfo3; VarCompInfo[3])
                    {

                    }
                    column(VarCompInfo4; VarCompInfo[4])
                    {

                    }
                    column(VarCompInfo5; VarCompInfo[5])
                    {

                    }
                    column(OutputNo; OutputNo)
                    {

                    }
                    column(CopyText; CopyText)
                    {

                    }
                    column(VarDocTittle; VarDocTittle)
                    {

                    }
                    column(VarSignature; VarSignature)
                    {

                    }
                    dataitem("Sales Line"; "Sales Line")
                    {
                        DataItemLink = "Document No." = field("No."), "Document Type" = field("Document Type");
                        DataItemLinkReference = Header;
                        column(SalesLine_No; "Sales Line"."No.")
                        {

                        }
                        column(Description; Description)
                        {

                        }
                        column(LineDiscription; "Sales Line"."Description 2")
                        {

                        }
                        column(Net_Weight; "Net Weight")
                        {

                        }
                        column(Gross_Weight; "Gross Weight")
                        {

                        }
                        column(ContainerSealNo; Header.Container)
                        {

                        }
                        column(SeqNo; SeqNo)
                        {

                        }
                        trigger OnAfterGetRecord()
                        begin
                            if (Type <> Type::" ") then
                                SeqNo += 1;
                        end;
                    }
                }
                trigger OnAfterGetRecord()
                begin
                    if Number > 1 then begin
                        CopyText := 'COPY';
                        OutputNo += 1;
                    end;

                    SeqNo := 0;
                end;

                trigger OnPreDataItem()
                begin
                    NoOfLoops := Abs(NoOfCopies) + 1;
                    CopyText := '';
                    SetRange(Number, 1, NoOfLoops);
                    OutputNo := 1;
                end;
            }
            trigger OnAfterGetRecord()
            var
            begin
                RecCompInfo.get();
                RecCompInfo.CalcFields(Picture);

                case ReqPDocTittleOpt of
                    ReqPDocTittleOpt::"CERTIFICATE OF ORIGIN":
                        VarDocTittle := 'CERTIFICATE OF ORIGIN';
                end;
                Clear(varBillTo);
                Clear(varShipTo);
                Clear(VarCompInfo);

                RecCountry.Reset();
                if RecCountry.Get(RecCompInfo."Country/Region Code") then;

                VarCompInfo[1] := RecCompInfo.Name;
                VarCompInfo[2] := RecCompInfo.Address;
                if RecCompInfo."Address 2" <> '' then
                    VarCompInfo[3] := '    ' + RecCompInfo."Address 2" + ', ' + RecCountry.Name + ' ' + RecCompInfo."Post Code"
                else
                    VarCompInfo[3] := '    ' + RecCountry.Name + ' ' + RecCompInfo."Post Code";
                VarCompInfo[4] := RecCompInfo."Phone No." + ' ' + RecCompInfo."Fax No.";
                VarCompInfo[5] := RecCompInfo."E-Mail";
                Customer.Reset();
                if Customer.get(Header."Bill-to Customer No.") then;

                varBillTo[1] := "Bill-to Name";
                varBillTo[2] := "Bill-to Address";
                varBillTo[3] := "Bill-to Address 2";
                varBillTo[4] := "Bill-to City" + ' ' + "Bill-to Post Code";
                varBillTo[5] := 'IEC Code: ' + Customer."IEC Code";
                CompressArray(varBillTo);

                varShipTo[1] := "Ship-to Name";
                varShipTo[2] := "Ship-to Address";
                varShipTo[3] := "Ship-to Address 2";
                varShipTo[4] := "Ship-to City" + ' ' + "Ship-to Post Code";
                varShipTo[5] := 'IEC Code: ' + Customer."IEC Code";
                CompressArray(varShipTo)
                ;
                CalcFields(Amount, "Amount Including VAT")
            end;
        }
    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                field(NoOfCopies; NoOfCopies)
                {
                    Caption = 'No. of Copies';
                    ApplicationArea = All;
                    Visible = false;
                }
                field("Document Titile"; ReqPDocTittleOpt)
                {
                    ApplicationArea = All;
                }
                field(VarSignature; VarSignature)
                {
                    Caption = 'Authorized Signature';
                    ApplicationArea = all;
                }
            }
        }

        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    rendering
    {
        layout(CertOfOrigin)
        {
            Type = RDLC;
            LayoutFile = './ReportLayout/50161.ReportLayout.CertOfOrgin.rdl';
        }
    }
    trigger OnInitReport()
    begin
        VarSignature := true;
    end;

    var
        myInt: Integer;
        RecCompInfo: Record "Company Information";
        VarCompInfo: array[20] of Text;
        varShipTo: array[20] of Text;
        varBillTo: array[20] of Text;
        CopyText: Text[30];
        OutputNo: Integer;
        NoOfLoops: Integer;
        NoOfCopies: Integer;
        SeqNo: Integer;
        ContainerSealNo: Code[20];
        ReqPDocTittleOpt: Option "CERTIFICATE OF ORIGIN";
        VarDocTittle: Text;
        RecCountry: Record "Country/Region";
        VarSignature: Boolean;
        Customer: Record Customer;
}