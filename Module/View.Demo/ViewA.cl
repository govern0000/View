class ViewA : View
{
    maide prusate Bool Init()
    {
        base.Init();

        var DrawBrush brushA;
        brushA : new DrawBrush;
        brushA.Kind : this.Demo.BrushKindList.Color;
        brushA.Color : this.Demo.DrawInfra.ColorCreate(0hff, 0, 0, 0hff);
        brushA.Init();

        this.Brush : new DrawBrush;
        this.Brush.Kind : this.Demo.BrushKindList.Color;
        this.Brush.Color : this.Demo.DrawInfra.ColorCreate(0hff, 0hff, 0hff, 0);
        this.Brush.Init();

        var DrawBrush slashBrush;
        slashBrush : new DrawBrush;
        slashBrush.Kind : this.Demo.BrushKindList.Color;
        slashBrush.Color : this.Demo.DrawInfra.ColorCreate(0hff, 0hff, 0, 0hff);
        slashBrush.Init();

        var DrawSlash slash;
        slash : new DrawSlash;
        slash.Brush : slashBrush;
        slash.Line : this.Demo.SlashLineList.DashDotDot;
        slash.Cape : this.Demo.SlashCapeList.Round;
        slash.Join : this.Demo.SlashJoinList.Bevel;
        slash.Size : this.Demo.MathInt(11);
        slash.Init();

        var DrawForm form;
        form : new DrawForm;
        form.Init();

        var DrawPolateLinear polateLinear;
        polateLinear : new DrawPolateLinear;
        polateLinear.StartPos : this.Demo.DrawInfra.PosCreate(this.MathInt(300), 0);
        polateLinear.EndPos : this.Demo.DrawInfra.PosCreate(this.MathInt(300), this.MathInt(400));
        polateLinear.Init();

        var DrawPolateStop polateStop;
        polateStop : new DrawPolateStop;
        polateStop.Count : 3;
        polateStop.Init();

        var DrawPolateStopPoint aa;
        aa : new DrawPolateStopPoint;
        aa.Init();

        this.PolateStopSetPoint(polateStop, aa, 0, 0, this.Demo.DrawInfra.ColorCreate(0hff, 0hff, 0, 0));
        this.PolateStopSetPoint(polateStop, aa, 1, this.MathValue(1, 0sn1), this.Demo.DrawInfra.ColorCreate(0hff, 0, 0hff, 0));
        this.PolateStopSetPoint(polateStop, aa, 2, this.MathInt(1), this.Demo.DrawInfra.ColorCreate(0hff, 0, 0, 0hff));

        var DrawPolate polate;
        polate : new DrawPolate;
        polate.Kind : this.Demo.PolateKindList.Linear;
        polate.Linear : polateLinear;
        polate.Stop : polateStop;
        polate.Spread : this.Demo.PolateSpreadList.Close;
        polate.Init();

        var DrawBrush brush;
        brush : new DrawBrush;
        brush.Kind : this.Demo.BrushKindList.Polate;
        brush.Polate : polate;
        brush.Init();

        var String oa;
        oa : "G L 的哈gd@行 o #";

        var TextText textA;
        textA : this.Demo.TextCreate(oa);

        this.Pos.Col : 100;
        this.Pos.Row : 100;
        this.Size.Width : 1600;
        this.Size.Hegth : 900;
        this.Back : brushA;
        this.Slash : slash;
        this.Form : form;
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

        this.Form.Final();

        var DrawBrush k;
        k : this.Slash.Brush;

        this.Slash.Final();

        k.Final();

        this.Brush.Final();

        this.Back.Final();
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
    field prusate DrawSlash Slash { get { return data; } set { data : value; } }
    field prusate DrawBrush Brush { get { return data; } set { data : value; } }
    field prusate DrawForm Form { get { return data; } set { data : value; } }
    field prusate Int RotateValue { get { return data; } set { data : value; } }
    field prusate DrawRect EllipseRect { get { return data; } set { data : value; } }
    field prusate DrawBrush EllipseBrush { get { return data; } set { data : value; } }
    field prusate DrawFont Font { get { return data; } set { data : value; } }
    field prusate TextText Text { get { return data; } set { data : value; } }
    field prusate DrawSlash TextSlash { get { return data; } set { data : value; } }

    maide precate Bool ExecuteDrawThis(var Draw draw)
    {
        var Int col;
        var Int row;
        col : this.Pos.Col;
        row : this.Pos.Row;
        var Int width;
        var Int hegth;
        width : this.Size.Width;
        hegth : this.Size.Hegth;

        this.DrawRectA.Pos.Col : this.MathInt(col);
        this.DrawRectA.Pos.Row : this.MathInt(row);
        this.DrawRectA.Size.Width : this.MathInt(width);
        this.DrawRectA.Size.Hegth : this.MathInt(hegth);

        draw.Fill : this.Back;
        draw.Line : this.Slash;

        draw.FillPos.Col : this.MathInt(col);
        draw.FillPos.Row : this.MathInt(row);
        draw.FillPosSet();

        draw.ExecuteRectRound(this.DrawRectA, this.MathInt(40), this.MathInt(30));
    
        var Int oa;
        oa : this.RotateValue * 10;
        var Int ob;
        ob : oa / 360;
        ob : ob * 360;
        oa : oa - ob;

        var Int angle;
        angle : this.MathInt(oa);

        this.Form.Reset();

        this.Form.Pos(this.MathInt(col), this.MathInt(row));

        this.Form.Angle(angle);

        draw.Form : this.Form;
        draw.FormSet();

        draw.Fill : this.Brush;

        this.DrawRectA.Pos.Col : 0;
        this.DrawRectA.Pos.Row : 0;
        this.DrawRectA.Size.Width : this.MathInt(300);
        this.DrawRectA.Size.Hegth : this.MathInt(200);

        draw.ExecuteRectRound(this.DrawRectA, this.MathInt(40), this.MathInt(30));

        draw.Form : null;
        draw.FormSet();

        draw.Line : null;
        draw.Fill : null;

        this.EllipseRect.Pos.Col : this.MathInt(this.Pos.Col + 1000);
        this.EllipseRect.Pos.Row : this.MathInt(this.Pos.Row + 20);

        draw.Fill : this.EllipseBrush;

        draw.ExecuteRound(this.EllipseRect);

        draw.Fill : null;

        this.DrawRectA.Pos.Col : this.MathInt(this.Pos.Col + 750);
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