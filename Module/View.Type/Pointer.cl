class Pointer : Any
{
    maide prusate Bool Init()
    {
        base.Init();
        this.ListInfra : share ListInfra;
        this.PointerIndexList : share PointerIndexList;

        this.InitFieldList();
        return true;
    }

    field prusate Int Col
    {
        get { return cast Int(this.Get(this.PointerIndexList.Col)); }
        set { this.Set(this.PointerIndexList.Col, value); }
    }
    field prusate Int Row
    {
        get { return cast Int(this.Get(this.PointerIndexList.Row)); }
        set { this.Set(this.PointerIndexList.Row, value); }
    }
    field prusate Int DeltaCol
    {
        get { return cast Int(this.Get(this.PointerIndexList.DeltaCol)); }
        set { this.Set(this.PointerIndexList.DeltaCol, value); }
    }
    field prusate Int DeltaRow
    {
        get { return cast Int(this.Get(this.PointerIndexList.DeltaRow)); }
        set { this.Set(this.PointerIndexList.DeltaRow, value); }
    }
    field prusate Bool ButtonLite
    {
        get { return cast Bool(this.Get(this.PointerIndexList.ButtonLite)); }
        set { this.Set(this.PointerIndexList.ButtonLite, value); }
    }
    field prusate Bool ButtonRite
    {
        get { return cast Bool(this.Get(this.PointerIndexList.ButtonRite)); }
        set { this.Set(this.PointerIndexList.ButtonRite, value); }
    }
    field precate ListInfra ListInfra { get { return data; } set { data : value; } }
    field precate PointerIndexList PointerIndexList { get { return data; } set { data : value; } }
    field precate Array Field { get { return data; } set { data : value; } }

    maide precate Bool InitFieldList()
    {
        this.Field : this.ListInfra.ArrayCreate(6);
        return true;
    }

    maide prusate Any Get(var Int index)
    {
        var Any a;
        a : this.Field.Get(index);
        return a;
    }

    maide prusate Bool Set(var Int index, var Any value)
    {
        var Any ka;
        ka : this.Get(index);

        inf (ka = value)
        {
            return true;
        }

        this.Field.Set(index, value);

        this.Event(index, value);
        return true;
    }

    maide prusate Bool Event(var Int index, var Any value)
    {
    }
}