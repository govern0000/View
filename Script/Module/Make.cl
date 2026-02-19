class Make : EntryEntry
{
    maide precate Int ExecuteMain()
    {
        var Shell shell;
        shell : new Shell;
        shell.Init();

        shell.Make("View", "View.Draw");
        shell.Make("View", "View.Type");
        shell.Make("View", "View.Play");
        shell.Make("View", "View.Frame");
        shell.Make("View", "View.View");
        shell.Make("View", "View.Demo");

        return 0;
    }
}