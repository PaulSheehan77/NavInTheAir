table 50100 "AIR Airplane type"
{

    fields
    {
        field(1; "ICAO Code"; Code[20])
        {
            CaptionML = ENU = 'ICAO Code';
            AccessByPermission = tabledata "Item" = R;
        }
        field(10; Description; Text[250])
        {
            CaptionML = ENU = 'Description';
        }
        field(11; Popularity; Decimal)
        {
            CaptionML = ENU = 'Popularity %';
        }


    }

    keys
    {
        key(PK; "ICAO Code")
        {
            Clustered = true;
        }
        key(SK; Popularity) { }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "ICAO Code", Description, Popularity) { }
    }

    var

    trigger OnInsert();
    begin
    end;

    trigger OnModify();
    begin
    end;

    trigger OnDelete();
    begin
    end;

    trigger OnRename();
    begin
    end;

}