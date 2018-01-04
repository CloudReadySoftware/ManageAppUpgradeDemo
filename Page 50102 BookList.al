page 50102 "Book List"
{
    PageType = List;
    SourceTable = Book;
    CardPageId = "Book Card";

    layout
    {
        area(content)
        {
            repeater(books)
            {
                field("No.";"No."){
                    ApplicationArea=All;
                }
                field(Title;Title){
                    ApplicationArea=All;
                }
                field(Author;Author){
                    ApplicationArea=All;
                }
                field(Hardcover;Hardcover){
                    ApplicationArea=All;
                }
                field("Page Count";"Page Count"){
                    ApplicationArea=All;
                }
            }
        }
    }
}