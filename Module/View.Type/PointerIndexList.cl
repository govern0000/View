class PointerIndexList : Any
{
    maide prusate Bool Init()
    {
        base.Init();
        this.ListInfra : share ListInfra;

        this.Index : 0;
        this.Count : 6;
        this.Array : this.CreateArray();

        this.Col : this.AddIndex();
        this.Row : this.AddIndex();
        this.DeltaCol : this.AddIndex();
        this.DeltaRow : this.AddIndex();
        this.ButtonLite : this.AddIndex();
        this.ButtonRite : this.AddIndex();
        return true;
    }

    field prusate PointerIndex Col { get { return data; } set { data : value; } }
    field prusate PointerIndex Row { get { return data; } set { data : value; } }
    field prusate PointerIndex DeltaCol { get { return data; } set { data : value; } }
    field prusate PointerIndex DeltaRow { get { return data; } set { data : value; } }
    field prusate PointerIndex ButtonLite { get { return data; } set { data : value; } }
    field prusate PointerIndex ButtonRite { get { return data; } set { data : value; } }
    field prusate Int Count { get { return data; } set { data : value; } }
    field precate ListInfra ListInfra { get { return data; } set { data : value; } }
    field precate Array Array { get { return data; } set { data : value; } }
    field precate Int Index { get { return data; } set { data : value; } }

    maide precate PointerIndex AddIndex()
    {
        var Int k;
        k : this.Index;

        this.Index : k + 1;

        var PointerIndex a;
        a : new PointerIndex;
        a.Init();
        a.Index : k;

        this.Array.Set(k, a);
        return a;
    }
}