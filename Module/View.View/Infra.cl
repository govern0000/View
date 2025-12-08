class Infra : Any
{
    maide prusate Bool Init()
    {
        base.Init();
        this.DrawInfra : share DrawInfra;
        return true;
    }

    field precate DrawInfra DrawInfra { get { return data; } set { data : value; } }

    maide prusate Field FieldCreate(var Comp comp)
    {
        var Field a;
        a : new Field;
        a.Init();
        a.Comp : comp;
        return a;
    }

    maide prusate Count CountCreate(var Int value)
    {
        var Count a;
        a : new Count;
        a.Init();
        a.Value : value;
        return a;
    }

    maide prusate Bool DrawRectAssign(var DrawRect dest, var DrawRect source)
    {
        this.DrawPosAssign(dest.Pos, source.Pos);
        this.DrawSizeAssign(dest.Size, source.Size);
        return true;
    }

    maide prusate Bool DrawPosAssign(var DrawPos dest, var DrawPos source)
    {
        dest.Col : source.Col;
        dest.Row : source.Row;
        return true;
    }

    maide prusate Bool DrawSizeAssign(var DrawSize dest, var DrawSize source)
    {
        dest.Width : source.Width;
        dest.Hegth : source.Hegth;
        return true;
    }

    maide prusate Bool StackPushChild(var Draw draw, var DrawRect stackRect, var DrawPos stackPos, var DrawRect rect, var DrawPos pos)
    {
        this.DrawPosAssign(pos, rect.Pos);

        this.DrawInfra.BoundArea(rect, draw.Area);

        this.DrawRectAssign(stackRect, draw.Area);

        this.DrawRectAssign(draw.Area, rect);

        draw.AreaSet();

        this.DrawPosAssign(stackPos, draw.Pos);

        this.DrawPosAssign(draw.Pos, pos);

        draw.PosSet();
        return true;
    }

    maide prusate Bool StackPopChild(var Draw draw, var DrawRect stackRect, var DrawPos stackPos)
    {
        this.DrawPosAssign(draw.Pos, stackPos);

        draw.PosSet();

        this.DrawRectAssign(draw.Area, stackRect);

        draw.AreaSet();
        return true;
    }
}