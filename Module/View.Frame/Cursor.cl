class Cursor : Any
{
    maide prusate Bool Init()
    {
        base.Init();
        
        return true;
    }

    maide prusate Bool Final()
    {
        return true;
    }

    field prusate CursorShape Shape { get { return data; } set { data : value; } }
    field prusate DrawImage Image { get { return data; } set { data : value; } }
    field prusate DrawImage Mask { get { return data; } set { data : value; } }
    field prusate Int PointCol { get { return data; } set { data : value; } }
    field prusate Int PointRow { get { return data; } set { data : value; } }
}