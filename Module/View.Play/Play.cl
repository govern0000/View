class Play : Any
{
    maide private Bool PrivateStatusEvent()
    {
        this.StatusEvent();
        return true;
    }

    maide private Bool PrivateCaseEvent()
    {
        this.CaseEvent();
        return true;
    }

    maide private Bool PrivateRateEvent()
    {
        this.RateEvent();
        return true;
    }

    maide private Bool PrivatePosEvent()
    {
        this.PosEvent();
        return true;
    }

    maide prusate Bool Init()
    {
        base.Init();
        this.InternIntern : share Intern;
        this.Extern : share Extern;
        this.InternInfra : share InternInfra;
        this.PlayStatusList : share StatusList;
        this.PlayCaseList : share CaseList;

        var Int ka;
        var Int kb;
        var Int kc;
        var Int kd;
        ka : this.InternIntern.StatePlayStatusEvent();
        kb : this.InternIntern.StatePlayCaseEvent();
        kc : this.InternIntern.StatePlayRateEvent();
        kd : this.InternIntern.StatePlayPosEvent();
        var Int arg;
        arg : this.InternIntern.StateArgMemory(this);
        this.InternStatusEventState : this.InternInfra.StateCreate(ka, arg);
        this.InternCaseEventState : this.InternInfra.StateCreate(kb, arg);
        this.InternRateEventState : this.InternInfra.StateCreate(kc, arg);
        this.InternPosEventState : this.InternInfra.StateCreate(kd, arg);

        var Extern extern;
        extern : this.Extern;

        this.Intern : extern.Play_New();
        extern.Play_Init(this.Intern);

        extern.Play_StatusEventStateSet(this.Intern, this.InternStatusEventState);
        extern.Play_CaseEventStateSet(this.Intern, this.InternCaseEventState);
        extern.Play_PosEventStateSet(this.Intern, this.InternPosEventState);
        return true;
    }

    maide prusate Bool Final()
    {
        var Extern extern;
        extern : this.Extern;

        extern.Play_Final(this.Intern);
        extern.Play_Delete(this.Intern);

        this.InternInfra.StateDelete(this.InternPosEventState);
        this.InternInfra.StateDelete(this.InternCaseEventState);
        this.InternInfra.StateDelete(this.InternStatusEventState);
        return true;
    }

    field prusate Stream Source { get { return data; } set { data : value; } }
    field prusate VideoOut VideoOut { get { return data; } set { data : value; } }
    field prusate AudioOut AudioOut { get { return data; } set { data : value; } }

    field prusate Status Status
    {
        get
        {
            var Int k;
            k : this.Extern.Play_StatusGet(this.Intern);
            var Status a;
            a : this.PlayStatusList.Get(k);
            return a;
        }
        set
        {
        }
    }

    field prusate Case Case
    {
        get
        {
            var Int k;
            k : this.Extern.Play_CaseGet(this.Intern);
            inf (k = 0)
            {
                return null;
            }
            k : k - 1;
            var Case a;
            a : this.PlayCaseList.Get(k);
            return a;
        }
        set
        {
        }
    }

    field prusate Int Rate
    {
        get
        {
            var Int a;
            a : this.Extern.Play_RateGet(this.Intern);
            return a;
        }
        set
        {
            this.Extern.Play_RateSet(this.Intern, value);
        }
    }

    field prusate Bool Seek
    {
        get
        {
            var Int k;
            k : this.Extern.Play_SeekGet(this.Intern);

            var Bool a;
            a : ~(k = 0);
            return a;
        }
        set
        {
        }
    }

    field prusate Int Time
    {
        get
        {
            var Int a;
            a : this.Extern.Play_TimeGet(this.Intern);
            return a;
        }
        set
        {
        }
    }

    field prusate Int Pos
    {
        get
        {
            var Int a;
            a : this.Extern.Play_PosGet(this.Intern);
            return a;
        }
        set
        {
            this.Extern.Play_PosSet(this.Intern, value);
        }
    }

    field private Intern InternIntern { get { return data; } set { data : value; } }
    field private Extern Extern { get { return data; } set { data : value; } }
    field private InternInfra InternInfra { get { return data; } set { data : value; } }
    field precate StatusList PlayStatusList { get { return data; } set { data : value; } }
    field precate CaseList PlayCaseList { get { return data; } set { data : value; } }
    field private Int Intern { get { return data; } set { data : value; } }
    field private Int InternPosEventState { get { return data; } set { data : value; } }
    field private Int InternRateEventState { get { return data; } set { data : value; } }
    field private Int InternCaseEventState { get { return data; } set { data : value; } }
    field private Int InternStatusEventState { get { return data; } set { data : value; } }

    maide prusate Bool SourceSet()
    {
        var Int k;
        k : cast Int(this.Source.Ident);

        var Extern extern;
        extern : this.Extern;

        extern.Play_SourceSet(this.Intern, k);
        extern.Play_SourceThisSet(this.Intern);
        extern.Play_SourceSet(this.Intern, 0);
        return true;
    }

    maide prusate Bool Execute()
    {
        this.Extern.Play_Execute(this.Intern);
        return true;
    }

    maide prusate Bool Pause()
    {
        this.Extern.Play_Pause(this.Intern);
        return true;
    }

    maide prusate Bool Stop()
    {
        this.Extern.Play_Stop(this.Intern);
        return true;
    }

    maide prusate Bool StatusEvent()
    {
    }

    maide prusate Bool CaseEvent()
    {
    }

    maide prusate Bool RateEvent()
    {
    }

    maide prusate Bool PosEvent()
    {
    }

    maide prusate Bool VideoOutSet()
    {
        var Int k;
        k : 0;
        inf (~(this.VideoOut = null))
        {
            k : this.VideoOut.Intern;
        }
        this.Extern.Play_VideoOutSet(this.Intern, k);
        return true;
    }

    maide prusate Bool AudioOutSet()
    {
        var Int k;
        k : 0;
        inf (~(this.AudioOut = null))
        {
            k : this.AudioOut.Intern;
        }
        this.Extern.Play_AudioOutSet(this.Intern, k);
        return true;
    }
}