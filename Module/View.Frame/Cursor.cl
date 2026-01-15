class Cursor : Any
{
    maide prusate Bool Init()
    {
        base.Init();
        this.Extern : share Extern;
        this.InternInfra : share InternInfra;

        var Extern extern;
        extern : this.Extern;

        this.Intern : extern.Cursor_New();

        var Bool b;
        b : this.Shape = null;

        inf (~b)
        {
            extern.Cursor_ShapeSet(this.Intern, this.Shape);
        }
        inf (b)
        {
            var Int image;
            image : cast Int(this.Image.Ident);

            var Int mask;
            mask : cast Int(this.Mask.Ident);

            extern.Cursor_ImageSet(this.Intern, image);

            extern.Cursor_MaskSet(this.Intern, mask);

            this.InternPoint : this.InternInfra.PosCreate();

            this.InternInfra.PosSet(this.InternPoint, this.Point.Col, this.Point.Row);

            extern.Cursor_PointSet(this.Intern, this.InternPoint);
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

        inf (this.InternPoint = null)
        {
            this.InternInfra.PosDelete(this.InternPoint);
        }
        return true;
    }

    field prusate Int Index { get { return data; } set { data : value; } }
    field prusate DrawImage Image { get { return data; } set { data : value; } }
    field prusate DrawImage Mask { get { return data; } set { data : value; } }
    field prusate DrawPos Point { get { return data; } set { data : value; } }
    field pronate Int Shape { get { return data; } set { data : value; } }
    field private Extern Extern { get { return data; } set { data : value; } }
    field private InternInfra InternInfra { get { return data; } set { data : value; } }
    field private Int Intern { get { return data; } set { data : value; } }
    field private Int InternPoint { get { return data; } set { data : value; } }
}