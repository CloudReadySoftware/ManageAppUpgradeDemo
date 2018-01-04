codeunit 50102 InstallCode
{
    Subtype = Install;

    trigger OnInstallAppPerCompany();
    begin
        InsertBook('0001','Bernini Code', 'Ban Drown', 480);
        InsertBook('0002','Copy Cat','Catwoman',138);
        
        //UpdateFavoriteBook('10000','0001');
        //UpdateFavoriteBook('20000','0003');
    end;

    trigger OnInstallAppPerDatabase();
    begin

    end;

    local procedure InsertBook(BookNo: Code[10]; BookTitle: Text; BookAuthor: Text; BookPageCount: Integer);    
    var
        Book: Record Book;
    begin
        with Book do begin
            if get(BookNo) then exit;

            "No." := BookNo;
            Author := BookAuthor;
            Hardcover := true;
            Title := BookTitle;
            "Page Count" := BookPageCount;

            Insert;
        end;


    end;

    local procedure UpdateFavoriteBook(CustNo: Code[20];FavBookNo: Code[10]);
    var
        Cust: Record Customer;
    begin
        with Cust do begin
            get(CustNo);

            "Favorite Book" := FavBookNo;

            modify;
        end;
    end;
}