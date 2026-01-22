class Frame : Any
{
    maide private Bool PrivateTypeEvent(var Int index, var Int value)
    {
        var Bool b;
        b : ~(value = 0);

        var Int indexK;
        indexK : this.InternInfra.TypeIndexFromInternIndex(index);

        this.TypeEvent(indexK, b);
        return true;
    }

    maide private Bool PrivateDrawEvent()
    {
        this.DrawEvent();
        return true;
    }

    maide prusate Bool Init()
    {
        base.Init();
        this.InternIntern : share Intern;
        this.Extern : share Extern;
        this.InternInfra : share InternInfra;

        var Int ka;
        var Int kb;
        ka : this.InternIntern.StateFrameTypeEvent();
        kb : this.InternIntern.StateFrameDrawEvent();
        var Int arg;
        arg : this.InternIntern.StateArgMemory(this);
        this.InternTypeState : this.InternInfra.StateCreate(ka, arg);
        this.InternDrawState : this.InternInfra.StateCreate(kb, arg);

        this.InternUpdateRect : this.InternInfra.RectCreate();

        var Extern extern;
        extern : this.Extern;

        this.Intern : extern.Frame_New();
        extern.Frame_Init(this.Intern);

        this.Title : "Frame";
        this.TitleSet();

        extern.Frame_TypeStateSet(this.Intern, this.InternTypeState);
        extern.Frame_DrawStateSet(this.Intern, this.InternDrawState);

        this.Out : extern.Frame_Out(this.Intern);
        return true;
    }

    maide prusate Bool Final()
    {
        var Extern extern;
        extern : this.Extern;

        extern.Frame_Final(this.Intern);
        extern.Frame_Delete(this.Intern);

        this.InternInfra.RectDelete(this.InternUpdateRect);

        this.InternInfra.StateDelete(this.InternDrawState);

        this.InternInfra.StateDelete(this.InternTypeState);
        return true;
    }

    field prusate String Title { get { return data; } set { data : value; } }
    field prusate Any Out { get { return data; } set { data : value; } }

    field prusate Bool Shown
    {
        get
        {
            var Int k;
            k : this.Extern.Frame_ShownGet(this.Intern);
            var Bool a;
            a : ~(k = 0);
            return a;
        }
        set
        {
            var Int k;
            k : this.InternInfra.Bool(value);
            this.Extern.Frame_ShownSet(this.Intern, k);
        }
    }

    field prusate DrawSize Size { get { return data; } set { data : value; } }
    field prusate DrawSize Dimend { get { return data; } set { data : value; } }
    field private Intern InternIntern { get { return data; } set { data : value; } }
    field private Extern Extern { get { return data; } set { data : value; } }
    field private InternInfra InternInfra { get { return data; } set { data : value; } }
    field private Int Intern { get { return data; } set { data : value; } }
    field private Int InternTitle { get { return data; } set { data : value; } }
    field private Int InternUpdateRect { get { return data; } set { data : value; } }
    field private Int InternDrawState { get { return data; } set { data : value; } }
    field private Int InternTypeState { get { return data; } set { data : value; } }

    maide prusate Bool TitleSet()
    {
        this.InternTitle : this.InternInfra.StringCreate(this.Title);

        var Extern extern;
        extern : this.Extern;

        extern.Frame_TitleSet(this.Intern, this.InternTitle);
        extern.Frame_TitleThisSet(this.Intern);
        extern.Frame_TitleSet(this.Intern, 0);

        this.InternInfra.StringDelete(this.InternTitle);
        return true;
    }

    maide precate Bool TypeEvent(var Int index, var Bool value)
    {
    }

    maide precate Bool DrawEvent()
    {
    }

    maide prusate Bool Update(var DrawRect rect)
    {
        this.InternInfra.RectSet(this.InternUpdateRect, 
            rect.Pos.Col, rect.Pos.Row, rect.Size.Width, rect.Size.Hegth
        );

        this.Extern.Frame_Update(this.Intern, this.InternUpdateRect);
        return true;
    }

    maide prusate Bool Close()
    {
        this.Extern.Frame_Close(this.Intern);
        return true;
    }
}