report 50168 EsunDeliveryOrder2
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = EsunDeliveryOrder;
    dataset
    {
        dataitem(Header; "Sales Shipment Header")
        {
            RequestFilterFields = "No.";
            dataitem(CopyLoop; Integer)
            {
                DataItemTableView = sorting(Number);
                dataitem(PageLoop; Integer)
                {
                    DataItemTableView = sorting(Number) where(Number = const(1));
                    column(Header_No; Header."No.")
                    {

                    }
                    column(CopyText; CopyText)
                    {

                    }
                    column(OutputNo; OutputNo)
                    {

                    }
                    column(RecCompInfoPicture; RecCompInfo.Picture)
                    {

                    }
                    column(RecCompInfoPicture2; RecCompInfo."Picture 2")
                    {

                    }
                    column(RecCompInfoPicture3; RecCompInfo."Picture 3")
                    {

                    }
                    column(RecCompInfoPicture4; RecCompInfo."Picture 4")
                    {

                    }
                    column(RecCompInfo_Picture1; RecCompInfo.Picture1) { }
                    column(Document_Date; Format(Header."Document Date", 0, '<Day,2>-<Month Text,3>-<Year>'))
                    {

                    }
                    column(External_Document_No; Header."External Document No.")
                    {

                    }
                    column(PaymentTerms; Header."Payment Terms Code")
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
                    column(VarDocTittle; VarDocTittle)
                    {

                    }
                    dataitem("Sales"; "Sales Shipment Line")
                    {
                        DataItemLink = "Document No." = FIELD("No.");
                        DataItemLinkReference = "Header";
                        column(Description; Description)
                        {

                        }
                        column(Quantity; Quantity)
                        {

                        }
                        column(Unit_of_Measure; "Unit of Measure")
                        {

                        }
                        column(Unit_Price; "Unit Price")
                        {

                        }
                        column(VAT_Base_Amount; "VAT Base Amount")
                        {

                        }
                        column(totalQty; totalQty)
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
                RecCompInfo.CalcFields(Picture1);
                case ReqPDocTittleOpt of
                    ReqPDocTittleOpt::"DELIVERY ORDER":
                        VarDocTittle := 'DELIVERY ORDER';
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
                CompressArray(varShipTo);
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
        layout(EsunDeliveryOrder)
        {
            Type = RDLC;
            LayoutFile = './ReportLayout/50168.ReportLayout.EsunDeliveryorder2.rdl';
        }
    }

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
        VarDocTittle: Text;
        totalQty: Decimal;
        ReqPDocTittleOpt: Option "DELIVERY ORDER";
        RecCountry: Record "Country/Region";
        Customer: Record Customer;
}