class Pointer : Any
{
    field prusate Int Col { get { return data; } set { data : value; } }
    field prusate Int Row { get { return data; } set { data : value; } }
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
            this.ButtonLite : cast Bool(valueA);
        }

        inf (kind = 2)
        {
            this.ButtonRite : cast Bool(valueA);
        }

        this.Event(kind, valueA, valueB);

        return true;
    }

    maide prusate Bool Event(var Int kind, var Any valueA, var Any valueB)
    {
    }
}