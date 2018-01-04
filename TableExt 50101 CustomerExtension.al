tableextension 50101 CustomerExtension extends Customer
{
    fields
    {
        // Add changes to table fields here
        field(50101;"Favorite Book";Code[10])
        {
            TableRelation=book."No.";
            CaptionML=ENU='Favorite Book';
        }

        field(50102;SecondFavoriteBook;Code[10])
        {
            TableRelation=book."No.";
            CaptionML=ENU='Second Favorite Book';
        }
        field(50103;ThirdFavoriteBook;Code[10])
        {
            TableRelation=book."No.";
            CaptionML=ENU='Third Favorite Book';
        }
        
    }
}