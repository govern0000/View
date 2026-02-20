class Pointer : Any
{
    maide prusate Bool Init()
    {
        base.Init();
        this.ListInfra : share ListInfra;
        this.IndexList : share PointerIndexList;

        this.InitFieldList();
        return true;
    }

    field prusate Int Col
    {
        get { return cast Int(this.Get(this.IndexList.Col)); }
        set { this.Set(this.IndexList.Col, value); }
    }
    field prusate Int Row
    {
        get { return cast Int(this.Get(this.IndexList.Row)); }
        set { this.Set(this.IndexList.Row, value); }
    }
    field prusate Int DeltaCol
    {
        get { return cast Int(this.Get(this.IndexList.DeltaCol)); }
        set { this.Set(this.IndexList.DeltaCol, value); }
    }
    field prusate Int DeltaRow
    {
        get { return cast Int(this.Get(this.IndexList.DeltaRow)); }
        set { this.Set(this.IndexList.DeltaRow, value); }
    }
    field prusate Bool ButtonLite
    {
        get { return cast Bool(this.Get(this.IndexList.ButtonLite)); }
        set { this.Set(this.IndexList.ButtonLite, value); }
    }
    field prusate Bool ButtonRite
    {
        get { return cast Bool(this.Get(this.IndexList.ButtonRite)); }
        set { this.Set(this.IndexList.ButtonRite, value); }
    }
    field precate ListInfra ListInfra { get { return data; } set { data : value; } }
    field precate PointerIndexList IndexList { get { return data; } set { data : value; } }
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
        var Index k;
        k : this.IndexList.Get(index);

        inf (k = null)
        {
            return true;
        }

        var Any ka;
        ka : this.Get(index);

        inf (ka = value)
        {
            return true;
        }

        this.Field.Set(index, value);

        this.Event(k, value);
        return true;
    }

    maide prusate Bool Event(var PointerIndex index, var Any value)
    {
    }
}