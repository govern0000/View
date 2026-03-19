class PointerA : Pointer
{
    field prusate Demo Demo { get { return data; } set { data : value; } }

    maide prusate Bool Event(var Int kind)
    {
        inf (kind = 2)
        {
            var Int cursor;
            cursor : 11;
            
            inf (this.ButtonLite)
            {
                cursor : 9;
            }

            this.Demo.Frame.Cursor : cursor;
            this.Demo.Frame.CursorSet();
        }
        return true;
    }
}