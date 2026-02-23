class DimendState : State
{
    field prusate Frame Frame { get { return data; } set { data : value; } }

    maide prusate Bool Execute()
    {
        return this.Frame.Dimend();
    }
}