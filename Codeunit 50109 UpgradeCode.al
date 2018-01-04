codeunit 50109 UpgradeCode
{
    Subtype = Upgrade;

    trigger OnUpgradePerCompany();
    begin
        HandleUpgrade;
    end;
    
    trigger OnUpgradePerDatabase();
    begin

    end;

    local procedure HandleUpgrade();
    var
        Book: Record book;
        ArchVersion: Text;
        CurrentModuleInfo: ModuleInfo;
    begin
        NavApp.GetCurrentModuleInfo(CurrentModuleInfo); //The API
        ArchVersion := format(CurrentModuleInfo.DataVersion.Major);  

        if not Book.findset then exit;
        repeat
            Book.Title := StrSubstNo('Upgraded from Version %1', ArchVersion);
            book.Modify(false);
        until book.next < 1;
    end;
}