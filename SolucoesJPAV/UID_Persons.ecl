IMPORT $;

Layout_Persons_RecID := RECORD
    UNSIGNED4 RecID;
    $.File_Persons.Layout;
END;

Layout_Persons_RecID IDRecs($.File_Persons.Layout L, INTEGER ID) := TRANSFORM
    SELF.RecID := ID;
    SELF := L;
END;

EXPORT UID_Persons := PROJECT($.File_Persons.File, IDRecs(LEFT, COUNTER));
