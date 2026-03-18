class CaseList : Any
{
    maide prusate Bool Init()
    {
        base.Init();
        this.InitArray();
        this.Count : this.Array.Count;
        this.Index : 0;

        var Extern extern;
        extern : share Extern;

        var Int varShare;
        varShare : extern.Infra_Share();
        var Int stat;
        stat : extern.Share_Stat(varShare);

        this.Stopped : this.AddItem(extern.Stat_PlayCaseStopped(stat));
        this.Playing : this.AddItem(extern.Stat_PlayCasePlaying(stat));
        this.Paused : this.AddItem(extern.Stat_PlayCasePaused(stat));
        return true;
    }

    field prusate Case Stopped { get { return data; } set { data : value; } }
    field prusate Case Playing { get { return data; } set { data : value; } }
    field prusate Case Paused { get { return data; } set { data : value; } }

    maide precate Case AddItem(var Int o)
    {
        var Case item;
        item : new Case;
        item.Init();
        item.Index : this.Index;
        item.Intern : o;
        this.Array.Set(item.Index, item);
        this.Index : this.Index + 1;
        return item;
    }

    maide precate Bool InitArray()
    {
        this.Array : new Array;
        this.Array.Count : this.ArrayCount;
        this.Array.Init();
        return true;
    }

    field precate Array Array { get { return data; } set { data : value; } }

    field precate Int ArrayCount { get { return 3; } set { } }

    field prusate Int Count { get { return data; } set { data : value; } }

    field precate Int Index { get { return data; } set { data : value; } }

    maide prusate Case Get(var Int index)
    {
        return cast Case(this.Array.Get(index));
    }
}