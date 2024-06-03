report 50151 DeliveryOrder
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = "Delivery Order";
    Caption = 'Delivery Order';
    dataset
    {
        dataitem("Header"; "Sales Shipment Header")
        {
            RequestFilterFields = "No.";
            dataitem(CopyLoop; Integer)
            {
                DataItemTableView = sorting(Number);
                dataitem(PageLoop; Integer)
                {
                    DataItemTableView = sorting(Number) where(Number = const(1));
                    column(OutputNo; OutputNo)
                    {

                    }
                    column(IEC_code; IEC_code) { }
                    column(No; Header."No.")
                    {

                    }
                    column(Your_Reference; Header."Your Reference")
                    {

                    }
                    column(Document_Date; Format(Header."Document Date", 0, '<Day,2>/<Month,2>/<Year>'))
                    {

                    }
                    column(Order_Date; Format(Header."Order Date", 0, '<Day,2>/<Month,2>/<Year>'))
                    {

                    }
                    column(ExternalDocument_No; Header."External Document No.")
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
                    column(DocTittle; StrSubstNo(Text004, CopyText))
                    {

                    }
                    column(SellTo_No; Header."Sell-to Customer No.")
                    {

                    }
                    column(SellToName; SellTo[1])
                    {

                    }
                    column(SellToAddress; SellTo[2])
                    {

                    }
                    column(SellToAddress2; SellTo[3])
                    {

                    }
                    column(SellToCounty_PostCode; SellTo[4])
                    {

                    }
                    column(SellToPhoneno; SellTo[5])
                    {

                    }
                    column(SellToFaxno; SellTo[6])
                    {

                    }
                    column(SellTo; SellTo[7])
                    {

                    }
                    column(SellTo8; SellTo[8])
                    {

                    }
                    column(ShipToName; ShipTo[1])
                    {

                    }
                    column(ShipToAddress; ShipTo[2])
                    {

                    }
                    column(ShipToAddress2; ShipTo[3])
                    {

                    }
                    column(ShipToCounty_PostCode; ShipTo[4])
                    {

                    }
                    column(ShipToPhone; ShipTo[5])
                    {

                    }
                    column(ShipToFax; ShipTo[6])
                    {

                    }
                    column(ShipTo7; ShipTo[7])
                    {

                    }
                    column(ShipTo8; ShipTo[8])
                    {

                    }
                    column(No_Lbl; No_Lbl)
                    {

                    }
                    column(Date_Lbl; Date_Lbl)
                    { }
                    column(YourReferance_Lbl; YourReferance_Lbl)
                    {

                    }
                    column(LabSellToNo; LabSellToNo)
                    {

                    }
                    column(LabOrderDate; LabOrderDate)
                    {

                    }
                    column(DeliveryTo; DeliveryTo)
                    {

                    }
                    column(LabPoref; LabPoref)
                    {

                    }
                    column(Labportofloding; Labportofloding)
                    {

                    }
                    column(companyName; companyName)
                    {

                    }
                    column(PageLbl; PageLbl)
                    {

                    }
                    dataitem("Sales Shipment Line"; "Sales Shipment Line")
                    {
                        DataItemLink = "Document No." = FIELD("No.");
                        DataItemLinkReference = "Header";
                        column(No_; "No.")
                        {

                        }
                        column(Description; Description)
                        {

                        }
                        column(Quantity; Quantity)
                        {

                        }
                        column(Unit_of_Measure; "Unit of Measure Code")
                        {

                        }
                        column(SeqNo; SeqNo)
                        {

                        }
                        trigger OnAfterGetRecord()
                        begin
                            if (Type <> Type::" ") then begin
                                SeqNo += 1;
                                SeqNo := SeqNoempty + SeqNo;
                            end
                            else begin
                                if (Type = Type::" ") then begin
                                    SeqNoempty := SeqNo;
                                    Clear(SeqNo);
                                end
                            end;
                        end;
                    }
                }
                trigger OnAfterGetRecord()
                begin
                    if Number > 1 then begin
                        CopyText := FormatDocument.GetCOPYText();
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
                customer: Record Customer;
            begin
                RecCompInfo.Get();
                RecCompInfo.CalcFields(Picture);
                RecCompInfo.CalcFields(Picture1);
                companyName := RecCompInfo.Name;
                SellTo[1] := "Sell-to Customer Name";
                SellTo[2] := "Sell-to Address";
                SellTo[3] := "Sell-to Address 2";
                RecCountry.Reset;
                if "Sell-to Post Code" <> '' then begin
                    if RecCountry.Get("Sell-to Country/Region Code") then
                        SellTo[4] := RecCountry.Name + ' ' + "Sell-to Post Code";
                end;
                CompressArray(SellTo);
                if Customer.Get("Sell-to Customer No.") then begin
                    SellTo[5] := Customer."Phone No.";
                    SellTo[6] := Customer."Fax No.";
                end;

                ShipTo[1] := "Ship-to Name";
                ShipTo[2] := "Ship-to Address";
                ShipTo[3] := "Ship-to Address 2";
                RecCountry.Reset;
                if RecCountry.Get("Ship-to Country/Region Code") then begin
                    if "Ship-to Post Code" <> '' then
                        ShipTo[4] := RecCountry.Name
                    else
                        ShipTo[4] := "Ship-to Post Code";
                end;
                CompressArray(ShipTo);

                if Customer.Get("Sell-to Customer No.") then;
                ShipTo[5] := Customer."Phone No.";
                ShipTo[6] := Customer."Fax No.";
                IEC_code := Customer."IEC Code";
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
                    Caption = 'No Of Copies';
                    ApplicationArea = All;
                    Visible = true;
                }
            }
        }
        actions
        {

        }
    }

    rendering
    {
        layout("Delivery Order")
        {
            Type = RDLC;
            LayoutFile = './ReportLayout/50151.ReportLayout.DeliveryOrder.rdl';
        }
    }

    var
        IEC_code: Code[20];
        SeqNoempty: Decimal;
        RecCountry: Record "Country/Region";
        myInt: Integer;
        Customer: Record Customer;
        RecCompInfo: Record "Company Information";
        DocTittle: Label 'DELIVERY ORDER';
        companyName: Text;
        OutputNo: Integer;
        No: Code[30];
        Document_Date: Date;
        Order_Date: Date;
        Your_Reference: Text[35];
        ExternalDocument_No: Code[35];
        SeqNo: Integer;
        NoOfCopies: Integer;
        NoOfLoops: Integer;
        CopyText: Text[30];
        SellTo: array[10] of Text[100];
        ShipTo: array[10] of Text[100];
        LabSellToNo: Label 'Sell To';
        DeliveryTo: Label 'Ship To';
        No_Lbl: Label 'No.';
        Date_Lbl: Label 'Date';
        YourReferance_Lbl: Label 'Your Ref No';
        ReqPDocTittleOpt: Option "Delivery Order";
        LabOrderDate: Label 'Order Date';
        LabPoref: Label 'Po.REF';
        Labportofloding: Label 'Port Of Loading';
        PageLbl: Label 'Page';
        Text004: Label 'DELIVERY ORDER %1', Comment = '%1 = Document No.';
        FormatDocument: Codeunit "Format Document";
}