class Pointer : Any
{
    maide prusate Bool Init()
    {
        base.Init();
        this.ListInfra : share ListInfra;

        this.InitFieldList();
        return true;
    }

    field prusate Int Col { get { return this.Get(0); } set { this.Set(0, value); } }
    field prusate Int Row { get { return this.Get(1); } set { this.Set(1, value); } }
    field prusate Int DeltaCol { get { return this.Get(2); } set { this.Set(2, value); } }
    field prusate Int DeltaRow { get { return this.Get(3); } set { this.Set(3, value); } }
    field prusate Bool ButtonLite { get { return this.Get(4); } set { this.Set(4, value); } }
    field prusate Bool ButtonRite { get { return this.Get(5); } set { this.Set(5, value); } }
    field precate ListInfra ListInfra { get { return data; } set { data : value; } }
    field precate Array Field { get { return data; } set { data : value; } }

    maide precate Bool InitFieldList()
    {
        this.Field : this.ListInfra.ArrayCreate(6);
        return true;
    }

    maide prusate Any Get(var Int index)
    {
        var Any a;
        a : this.Field.Get(index));
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

        this.Event(k, value);
        return true;
    }

    maide prusate Bool Event(var Int index, var Any value)
    {
    }
}