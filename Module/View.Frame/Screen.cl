class Screen : Any
{
    maide prusate Bool Init()
    {
        base.Init();
        this.Extern : share Extern;
        this.DrawInfra : share DrawInfra;

        var Extern extern;
        extern : this.Extern;

        var Int intern;
        intern : extern.Main_Screen();

        var Int sizeK;
        sizeK : extern.Screen_SizeGet(intern);

        var Int sizeWidth;
        var Int sizeHegth;
        sizeWidth : extern.Size_WidthGet(sizeK);
        sizeHegth : extern.Size_HegthGet(sizeK);

        this.Size : this.DrawInfra.SizeCreate(sizeWidth, sizeHegth);

        var Int dimendK;
        dimendK : extern.Screen_DimendGet(intern);

        var Int dimendWidth;
        var Int dimendHegth;
        dimendWidth : extern.Size_WidthGet(dimendK);
        dimendHegth : extern.Size_HegthGet(dimendK);

        this.Dimend : this.DrawInfra.SizeCreate(dimendWidth, dimendHegth);

        return true;
    }

    field prusate DrawSize Size { get { return data; } set { data : value; } }
    field prusate DrawSize Dimend { get { return data; } set { data : value; } }
    field private Extern Extern { get { return data; } set { data : value; } }
    field precate DrawInfra DrawInfra { get { return data; } set { data : value; } }
}