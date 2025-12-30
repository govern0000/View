class ViewC : View
{
    maide prusate Bool Init()
    {
        base.Init();


        this.Pos.Col : 100;
        this.Pos.Row : 0;
        this.Size.Width : 500;
        this.Size.Hegth : 400;
        this.Back : brush;
        this.EllipseBrush : this.EllipseBrushCreate();
        this.EllipseRect : this.Demo.DrawInfra.RectCreate(0, 0, this.MathInt(100), this.MathInt(50));
        this.Font : this.FontCreate();
        this.Text : textA;
        this.TextSlash : this.TextSlashCreate();
        return true;
    }

    maide prusate Bool Final()
    {
        var DrawBrush brush;
        brush : this.Back;
        var DrawPolate polate;
        polate : brush.Polate;
        var DrawPolateStop polateStop;
        polateStop : polate.Stop;
        var DrawPolateLinear polateLinear;
        polateLinear : polate.Linear;

        this.TextSlashFinal(this.TextSlash);

        this.FontFinal(this.Font);

        this.EllipseBrushFinal(this.EllipseBrush);

        brush.Final();

        polate.Final();

        polateStop.Final();

        polateLinear.Final();
        return true;
    }

    maide private DrawFont FontCreate()
    {
        var DrawFont a;
        a : new DrawFont;
        a.Name : "Cascadia Mono";
        a.Size : 20;
        a.Strong : 400;
        a.Tenden : true;
        a.Staline : true;
        a.Midline : true;
        a.Endline : true;
        a.Init();
        return a;
    }

    maide private Bool FontFinal(var DrawFont a)
    {
        a.Final();
        return true;
    }

    maide private DrawSlash TextSlashCreate()
    {
        var DrawBrush ka;
        ka : new DrawBrush;
        ka.Kind : this.Demo.BrushKindList.Color;
        ka.Color : this.Demo.DrawInfra.ColorCreate(0hff, 0, 0, 0hff);
        ka.Init();

        var DrawSlash a;
        a : new DrawSlash;
        a.Brush : ka;
        a.Line : this.Demo.SlashLineList.DashDotDot;
        a.Cape : this.Demo.SlashCapeList.Round;
        a.Join : this.Demo.SlashJoinList.Bevel;
        a.Size : this.MathInt(14);
        a.Init();
        return a;
    }

    maide private Bool TextSlashFinal(var DrawSlash a)
    {
        var DrawBrush ka;
        ka : a.Brush;

        a.Final();

        ka.Final();
        return true;
    }

    maide private DrawBrush EllipseBrushCreate()
    {
        var DrawBrush a;
        a : new DrawBrush;
        a.Kind : this.Demo.BrushKindList.Color;
        a.Color : this.Demo.DrawInfra.ColorCreate(0hff, 0, 0hff, 0hff);
        a.Init();
        return a;
    }

    maide private Bool EllipseBrushFinal(var DrawBrush a)
    {
        a.Final();
        return true;
    }

    field prusate Demo Demo { get { return data; } set { data : value; } }
    field prusate DrawRect EllipseRect { get { return data; } set { data : value; } }
    field prusate DrawBrush EllipseBrush { get { return data; } set { data : value; } }
    field prusate DrawFont Font { get { return data; } set { data : value; } }
    field prusate TextText Text { get { return data; } set { data : value; } }
    field prusate DrawSlash TextSlash { get { return data; } set { data : value; } }

    maide precate Bool ExecuteDrawThis(var Draw draw)
    {
        base.ExecuteDrawThis(draw);

        this.EllipseRect.Pos.Col : this.MathInt(this.Pos.Col + 400);
        this.EllipseRect.Pos.Row : this.MathInt(this.Pos.Row + 20);

        draw.Fill : this.EllipseBrush;

        draw.ExecuteRound(this.EllipseRect);

        draw.Fill : null;

        this.DrawRectA.Pos.Col : this.MathInt(this.Pos.Col + 150);
        this.DrawRectA.Pos.Row : this.MathInt(this.Pos.Row + 50);
        this.DrawRectA.Size.Width : this.MathInt(300);
        this.DrawRectA.Size.Hegth : this.MathInt(100);

        draw.Font : this.Font;
        draw.Line : this.TextSlash;

        draw.ExecuteText(this.Text, this.Demo.AlignList.Mid, this.Demo.AlignList.Start, false, this.DrawRectA, null);

        draw.Line : null;
        draw.Font : null;
        return true;
    }

    maide private Bool PolateStopSetPoint(var DrawPolateStop stop, var DrawPolateStopPoint aa, var Int index, var Int pos, var DrawColor color)
    {
        aa.Pos : pos;
        aa.Color : color;
        stop.PointSet(index, aa);
        return true;
    }
}