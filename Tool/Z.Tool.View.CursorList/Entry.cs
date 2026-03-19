namespace Z.Tool.Class.CountList;

class Entry : EntryEntry
{
    protected override long Main()
    {
        Gen gen;
        gen = new Gen();
        gen.Init();
        long o;
        o = gen.Execute();
        return o;
    }

    [STAThread]
    static int Main(string[] arg)
    {
        return EntryEntry.Main(new Entry(), arg);
    }
}