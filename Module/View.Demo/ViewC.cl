class ViewC : View
{
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
}