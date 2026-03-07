class Pointer : Any
{
    field prusate Int Col { get { return data; } set { data : value; } }
    field prusate Int Row { get { return data; } set { data : value; } }
    field prusate Bool ButtonLite { get { return data; } set { data : value; } }
    field prusate Bool ButtonRite { get { return data; } set { data : value; } }

    maide prusate Bool Set(var Int kind, var Int valueA, var Int valueB)
    {
        inf (kind = 0)
        {
            this.Col : valueA;
            this.Row : valueB;
        }

        inf (kind = 1)
        {
            this.ButtonLite : ~(valueA = 0);
        }

        inf (kind = 2)
        {
            this.ButtonRite : ~(valueA = 0);
        }

        this.Event(kind, valueA, valueB);

        return true;
    }

    maide prusate Bool Event(var Int kind, var Int valueA, var Int valueB)
    {
    }
}