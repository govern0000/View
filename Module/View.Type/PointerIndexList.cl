class PointerIndexList : Any
{
    maide prusate Bool Init()
    {
        base.Init();
        this.Index : 0;

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
        return a;
    }
}