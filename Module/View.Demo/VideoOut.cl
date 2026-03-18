class VideoOut : PlayVideoOut
{
    field prusate Demo Demo { get { return data; } set { data : value; } }

    maide precate Bool FrameEvent()
    {
        this.Image(this.Demo.PlayImage);

        this.Demo.ViewInfra.DrawRectAssign(this.Demo.UpdateRect, this.Demo.Frame.View.Area);

        this.Demo.Frame.Update(this.Demo.UpdateRect);
        return true;
    }
}