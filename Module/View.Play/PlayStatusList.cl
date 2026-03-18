class PlayStatusList : Any
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

        this.NoError : this.AddItem(extern.Stat_PlayStatusNoError(stat));
        this.ResourceError : this.AddItem(extern.Stat_PlayStatusResourceError(stat));
        this.FormatError : this.AddItem(extern.Stat_PlayStatusFormatError(stat));
        this.NetworkError : this.AddItem(extern.Stat_PlayStatusNetworkError(stat));
        this.AccessDeniedError : this.AddItem(extern.Stat_PlayStatusAccessDeniedError(stat));
        return true;
    }

    field prusate PlayStatus NoError { get { return data; } set { data : value; } }
    field prusate PlayStatus ResourceError { get { return data; } set { data : value; } }
    field prusate PlayStatus FormatError { get { return data; } set { data : value; } }
    field prusate PlayStatus NetworkError { get { return data; } set { data : value; } }
    field prusate PlayStatus AccessDeniedError { get { return data; } set { data : value; } }

    maide precate PlayStatus AddItem(var Int o)
    {
        var PlayStatus item;
        item : new PlayStatus;
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

    field precate Int ArrayCount { get { return 5; } set { } }

    field prusate Int Count { get { return data; } set { data : value; } }

    field precate Int Index { get { return data; } set { data : value; } }

    maide prusate PlayStatus Get(var Int index)
    {
        return cast PlayStatus(this.Array.Get(index));
    }
}