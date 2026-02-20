class PointerIndexList : Any
{
    maide prusate Bool Init()
    {
        base.Init();
        this.Index : 0;

        this.Col : this.Add();
        this.Row : this.Add();
        this.DeltaCol : this.Add();
        this.DeltaRow : this.Add();
        this.ButtonLite : this.Add();
        this.ButtonRite : this.Add();
        return true;
    }

    field prusate Int Col { get { return data; } set { data : value; } }
    field prusate Int Row { get { return data; } set { data : value; } }
    field prusate Int DeltaCol { get { return data; } set { data : value; } }
    field prusate Int DeltaRow { get { return data; } set { data : value; } }
    field prusate Int ButtonLite { get { return data; } set { data : value; } }
    field prusate Int ButtonRite { get { return data; } set { data : value; } }
    field precate Int Index { get { return data; } set { data : value; } }

    maide precate Int Add()
    {
        var Int a;
        a : this.Index;

        this.Index : a + 1;
        return a;
    }
}