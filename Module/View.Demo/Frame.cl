class Frame : ViewFrame
{
    maide prusate Bool Init()
    {
        base.Init();
        this.MathInfra : share MathInfra;
        this.DrawInfra : share DrawInfra;
        this.Math : share Math;

        this.Screen : this.CreateScreen();

        this.MathComp : this.CreateMathComp();

        this.Draw : this.CreateDraw();
        return true;
    }

    maide prusate Bool Final()
    {
        this.FinalDraw(this.Draw);

        base.Final();
        return true;
    }

    maide precate Screen CreateScreen()
    {
        var Screen a;
        a : share Screen;
        a.DimendState : new DimendState;
        a.DimendState.Init();
        a.DimendState.Frame : this;
        return a;
    }

    maide precate MathComp CreateMathComp()
    {
        var MathComp a;
        a : new MathComp;
        a.Init();
        return a;
    }

    maide precate Draw CreateDraw()
    {
        var Draw a;
        a : new Draw;
        a.Init();
        a.Out : this.Out;
        a.Size.Width : this.Screen.Size.Width;
        a.Size.Hegth : this.Screen.Size.Hegth;
        a.SizeSet();
        return a;
    }

    maide precate Bool FinalDraw(var Draw a)
    {
        a.Final();
        return true;
    }

    field prusate View View { get { return data; } set { data : value; } }
    field prusate Type Type { get { return data; } set { data : value; } }
    field precate Draw Draw { get { return data; } set { data : value; } }
    field precate MathComp MathComp { get { return data; } set { data : value; } }
    field precate MathInfra MathInfra { get { return data; } set { data : value; } }
    field precate DrawInfra DrawInfra { get { return data; } set { data : value; } }
    field precate Math Math { get { return data; } set { data : value; } }
    field precate Screen Screen { get { return data; } set { data : value; } }

    maide precate Bool TypeEvent(var Int index, var Bool value)
    {
        inf (~(this.Type = null))
        {
            this.Type.Set(index, value);
        }
        return true;
    }

    maide precate Bool DrawEvent()
    {
        var Draw draw;
        draw : this.Draw;

        draw.Start();

        draw.Clear();

        inf (this.ValidDrawView())
        {
            this.ExecuteDrawView(draw);
        }

        draw.End();

        return true;
    }

    maide prusate Bool Dimend()
    {
        this.Draw.Size.Width : this.Screen.Size.Width;
        this.Draw.Size.Hegth : this.Screen.Size.Hegth;
        this.Draw.SizeSet();
        return true;
    }

    maide precate Bool ValidDrawView()
    {
        return ~(this.View = null);
    }

    maide precate Bool ExecuteDrawView(var Draw draw)
    {
        this.View.ExecuteDraw(draw);
        return true;
    }

    maide precate Int MathInt(var Int n)
    {
        var Int a;
        a : this.MathInfra.Int(this.MathComp, n);
        return a;
    }

    maide precate Int MathValue(var Int cand, var Int expo)
    {
        this.MathComp.Cand : cand;
        this.MathComp.Expo : expo;

        var Int a;
        a : this.Math.Value(this.MathComp);
        return a;
    }
}