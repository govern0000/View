class Cursor : Any
{
    maide prusate Bool Init()
    {
        base.Init();
        this.Extern : share Extern;

        var Extern extern;
        extern : this.Extern;

        this.Intern : extern.Cursor_New();

        var Bool b;
        b : this.Shape = null;

        inf (~b)
        {
            extern.Cursor_ShapeSet(this.Intern, this.Shape.Intern);
        }
        inf (b)
        {
        }

        extern.Cursor_Init(this.Intern);

        return true;
    }

    maide prusate Bool Final()
    {
        var Extern extern;
        extern : this.Extern;

        extern.Cursor_Final(this.Intern);
        extern.Cursor_Delete(this.Intern);
        return true;
    }

    field prusate CursorShape Shape { get { return data; } set { data : value; } }
    field prusate DrawImage Image { get { return data; } set { data : value; } }
    field prusate DrawImage Mask { get { return data; } set { data : value; } }
    field prusate DrawPos Point { get { return data; } set { data : value; } }
    field private Extern Extern { get { return data; } set { data : value; } }
    field private Int Intern { get { return data; } set { data : value; } }
}