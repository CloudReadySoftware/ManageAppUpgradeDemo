table 50101 Book {
    LookupPageId="Book List";
    
    fields{
        field(50101;"No.";Code[10]){
            CaptionML=ENU='No.';
        }

        field(50102;Title;Text[100])
        {
            CaptionML=ENU='Title';
        }
        field(50103;Author;Text[30])
        {
            CaptionML = ENU = 'Author';
        }
        field(50104;Hardcover;Boolean)
        {
            CaptionML=ENU='Hardcover';
        }
        field(50105;"Page Count";Integer)
        {
            CaptionML=ENU='Page Count';
        }
    }
}