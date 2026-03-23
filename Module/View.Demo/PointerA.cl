class PointerA : TypePointer
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

        inf (kind = 3)
        {
            var Int cursorAa;
            cursorAa : 4;

            inf (this.ButtonRite)
            {
                cursorAa : 6;
            }

            this.Demo.Frame.Cursor : cursorAa;
            this.Demo.Frame.CursorSet();
        }

        inf (kind = 4)
        {
            this.Demo.Frame.Cursor : 17;
            this.Demo.Frame.CursorSet();
        }
        return true;
    }
}