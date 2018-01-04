pageextension 50101 CustomerCardExtension extends "Customer Card"
{
    layout
    {
        // Add changes to page layout here
        addlast(General){
            field("Favorite Book";"Favorite Book")
            {
                ApplicationArea = All;
            }
            field(ThirdFavoriteBook;ThirdFavoriteBook)
            {
                ApplicationArea = All;
            }
        }
    }
}