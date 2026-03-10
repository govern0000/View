class Pointer : Any
{
    field prusate Int Col { get { return data; } set { data : value; } }
    field prusate Int Row { get { return data; } set { data : value; } }
    field prusate Int DeltaCol { get { return data; } set { data : value; } }
    field prusate Int DeltaRow { get { return data; } set { data : value; } }
    field prusate Bool ButtonLite { get { return data; } set { data : value; } }
    field prusate Bool ButtonRite { get { return data; } set { data : value; } }

    maide prusate Bool Set(var Int kind, var Any valueA, var Any valueB)
    {
        inf (kind = 0)
        {
            this.Col : cast Int(valueA);
            this.Row : cast Int(valueB);
        }

        inf (kind = 1)
        {
            this.DeltaCol : cast Int(valueA);
            this.DeltaRow : cast Int(valueB);
        }

        inf (kind = 2)
        {
            this.ButtonLite : cast Bool(valueA);
        }

        inf (kind = 3)
        {
            this.ButtonRite : cast Bool(valueA);
        }

        this.Event(kind);

        this.DeltaCol : 0;
        this.DeltaRow : 0;

        return true;
    }

    maide prusate Bool Event(var Int kind)
    {
    }
}