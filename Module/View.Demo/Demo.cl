class Demo : TextAdd
{
    maide prusate Bool Init()
    {
        base.Init();
        this.MathInfra : share MathInfra;
        this.DrawInfra : share DrawInfra;
        this.ViewInfra : share ViewInfra;
        this.Math : share Math;
        this.Console : share Console;
        this.ThreadThis : share ThreadThis;
        this.CompList : share DrawCompList;
        this.BrushKindList : share DrawBrushKindList;
        this.SlashLineList : share DrawSlashLineList;
        this.SlashCapeList : share DrawSlashCapeList;
        this.SlashJoinList : share DrawSlashJoinList;
        this.PolateKindList : share DrawPolateKindList;
        this.PolateSpreadList : share DrawPolateSpreadList;
        this.AlignList : share DrawAlignList;
        this.Screen : share Screen;
        return true;
    }

    field prusate Frame Frame { get { return data; } set { data : value; } }
    field prusate ViewA ViewA { get { return data; } set { data : value; } }
    field prusate DrawRect UpdateRect { get { return data; } set { data : value; } }
    field prusate DrawImage ThreadDrawImage { get { return data; } set { data : value; } }
    field prusate MathInfra MathInfra { get { return data; } set { data : value; } }
    field prusate DrawInfra DrawInfra { get { return data; } set { data : value; } }
    field prusate ViewInfra ViewInfra { get { return data; } set { data : value; } }
    field prusate Math Math { get { return data; } set { data : value; } }
    field prusate Console Console { get { return data; } set { data : value; } }
    field prusate DrawCompList CompList { get { return data; } set { data : value; } }
    field prusate DrawBrushKindList BrushKindList { get { return data; } set { data : value; } }
    field prusate DrawSlashLineList SlashLineList { get { return data; } set { data : value; } }
    field prusate DrawSlashCapeList SlashCapeList { get { return data; } set { data : value; } }
    field prusate DrawSlashJoinList SlashJoinList { get { return data; } set { data : value; } }
    field prusate DrawPolateKindList PolateKindList { get { return data; } set { data : value; } }    
    field prusate DrawPolateSpreadList PolateSpreadList { get { return data; } set { data : value; } }    
    field prusate DrawAlignList AlignList { get { return data; } set { data : value; } }
    field prusate Screen Screen { get { return data; } set { data : value; } }
    field prusate ThreadThis ThreadThis { get { return data; } set { data : value; } }
    field precate MathComp MathComp { get { return data; } set { data : value; } }

    maide prusate Bool Execute()
    {
        this.MathComp : new MathComp;
        this.MathComp.Init();

        this.ThreadDrawImage : this.ThreadDrawImageCreate();

        this.ExecuteThread();

        this.ExecuteTextWed();

        this.Frame : new Frame;
        this.Frame.Init();
        this.Frame.Title : "View Demo";
        this.Frame.TitleSet();

        this.UpdateRect : this.DrawInfra.RectCreate(0, 0, this.Screen.Size.Width, this.Screen.Size.Hegth);

        var TypeA type;
        type : new TypeA;
        type.Init();
        type.Demo : this;
        this.Frame.Type : type;

        this.ViewA : new ViewA;
        this.ViewA.Demo : this;
        this.ViewA.Init();

        var ViewB viewB;
        viewB : new ViewB;
        viewB.Demo : this;
        viewB.Init();

        this.ViewA.Child : viewB;

        this.Frame.View : this.ViewA;
        this.Frame.Shown : true;

        var Thread thread;
        thread : this.ThreadThis.Thread;

        thread.ExecuteMain();

        viewB.Final();

        this.ViewA.Final();

        this.Frame.Final();

        this.ThreadDrawImageFinal(this.ThreadDrawImage);
        return true;
    }

    maide private DrawImage ThreadDrawImageCreate()
    {
        var DrawImage a;
        a : this.DrawInfra.ImageCreateSize(this.DrawInfra.SizeCreate(250, 200));
        return a;
    }

    maide private Bool ThreadDrawImageFinal(var DrawImage a)
    {
        a.Final();
        return true;
    }

    maide private Bool ExecuteThread()
    {
        var ThreadState state;
        state : new ThreadState;
        state.Init();
        state.Demo : this;
        state.Image : this.ThreadDrawImage;

        var Thread thread;
        thread : new Thread;
        thread.Init();
        thread.ExecuteState : state;
        thread.Execute();

        thread.Wait();

        var Int aa;
        aa : thread.Status;
        this.Console.Out.Write(this.AddClear().Add("Thread Status: 0h").Add(this.StringIntHex(aa)).AddLine().AddResult());
 
        thread.Final();

        return true;
    }

    maide private Bool ExecuteTextWed()
    {
        var DrawImage image;
        image : this.DrawInfra.ImageCreateSize(this.DrawInfra.SizeCreate(10000, 40));

        var DrawFont font;
        font : this.DrawInfra.FontCreate("Cascadia Mono", 10, 400, false, false, false, false);

        var Draw draw;
        draw : new Draw;
        draw.Init();
        draw.Out : image.Out;
        draw.Size.Width : image.Size.Width;
        draw.Size.Hegth : image.Size.Hegth;
        draw.SizeSet();

        draw.Start();

        var DrawRect rectA;
        rectA : this.DrawInfra.RectCreate(this.MathInt(0), this.MathInt(0), this.MathInt(10000), this.MathInt(40));

        var DrawRect rectB;
        rectB : this.DrawInfra.RectCreate(0, 0, 0, 0);

        var DrawRect rectC;
        rectC : this.DrawInfra.RectCreate(0, 0, 0, 0);

        var String ka;
        ka : "M";

        var String kb;
        kb : this.StringComp.CreateChar(this.Char("M"), 1024);

        draw.Font : font;

        draw.Line : this.DrawInfra.SlashBlack;

        draw.ExecuteText(this.TA(ka), this.AlignList.Sta, this.AlignList.Sta, false, rectA, rectB);

        draw.ExecuteText(this.TA(kb), this.AlignList.Sta, this.AlignList.Sta, false, rectA, rectC);

        draw.Line : null;

        draw.Font : null;

        draw.End();

        draw.Final();

        font.Final();

        image.Final();

        this.ConsoleWriteMathValue("TextWed M 1 ", rectB.Size.Width);
        this.ConsoleWriteMathValue("TextWed M 1024 ", rectC.Size.Width);

        return true;
    }

    maide private Bool ConsoleWriteMathValue(var String prefix, var Int value)
    {
        this.Math.Comp(this.MathComp, value);
        
        var String ka;
        ka : this.StringSInt(this.MathComp.Expo);

        var String k;

        k : this.AddClear()
            .Add(prefix)
            .Add("Cand: ")
            .Add(this.StringIntFormat(this.MathComp.Cand, 16, false, 15, 15, this.Char("0")))
            .Add(", ")
            .Add("Expo: ")
            .Add(ka)
            .AddLine()
            .AddResult()
            ;

        this.Console.Out.Write(k);

        return true;
    }

    maide private String StringSInt(var Int n)
    {
        this.AddClear();

        var Int k;
        k : n;
        inf (sign <(n, 0))
        {
            k : 0 - n;
        
            this.Add("-");
        }

        this.Add(this.StringInt(k));

        return this.AddResult();
    }

    maide prusate Int MathInt(var Int n)
    {
        var Int a;
        a : this.MathInfra.Int(this.MathComp, n);
        return a;
    }

    maide prusate Int MathValue(var Int cand, var Int expo)
    {
        this.MathComp.Cand : cand;
        this.MathComp.Expo : expo;

        var Int a;
        a : this.Math.Value(this.MathComp);
        return a;
    }
}