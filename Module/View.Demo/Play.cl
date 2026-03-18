class Play : PlayPlay
{
    maide prusate Bool Init()
    {
        var StorageMode mode;
        mode : new StorageMode;
        mode.Init();
        mode.Read : true;

        this.PlayStorage : new Storage;
        this.PlayStorage.Init();
        this.PlayStorage.Path : "Alan-View.Demo-0.00.00/Data/Demo/Media.mp4";
        this.PlayStorage.Mode : mode;
        this.PlayStorage.Open();

        var VideoOut videoOut;
        videoOut : new VideoOut;
        videoOut.Init();
        videoOut.Demo : this.Demo;

        var Int scaleFactor;
        scaleFactor : bit <(1, 20);

        var Int volume;
        volume : this.Demo.MathValue(scaleFactor / 8, 0sn20);

        var PlayAudioOut audioOut;
        audioOut : new PlayAudioOut;
        audioOut.Init();
        audioOut.Volume : volume;

        base.Init();
        this.Source : this.PlayStorage.Stream;
        this.SourceSet();
        this.VideoOut : videoOut;
        this.AudioOut : audioOut;
        this.VideoOutSet();
        this.AudioOutSet();
        return true;
    }

    maide prusate Bool Final()
    {
        base.Final();

        this.AudioOut.Final();

        this.VideoOut.Final();

        this.PlayStorage.Close();

        this.PlayStorage.Final();
        return true;
    }

    field prusate Demo Demo { get { return data; } set { data : value; } }
    field private Storage PlayStorage { get { return data; } set { data : value; } }

    maide prusate Bool PosEvent()
    {
        this.Demo.ViewA.PlayPos : this.Pos;

        this.Demo.PlayTextSet();
        return true;
    }
}