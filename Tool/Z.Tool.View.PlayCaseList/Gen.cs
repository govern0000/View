namespace Z.Tool.View.PlayCaseList;

public class Gen : SourceGen
{
    public override bool Init()
    {
        base.Init();
        this.Module = this.S("View.Play");
        this.ClassName = this.S("StatusList");
        this.BaseClassName = this.S("Any");
        this.AnyClassName = this.S("Any");
        this.ItemClassName = this.S("Status");
        this.ArrayClassName = this.S("Array");
        this.Export = true;
        this.StatItemClassName = this.S("PlayStatus");
        this.ItemListFileName = this.GetStatItemListFileName();
        return true;
    }
}