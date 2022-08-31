IMPORT $;

Layout_Crimes_RowID := RECORD
    UNSIGNED4 RowID;
    $.File_Crimes_Optimized.File;
END;

Layout_Crimes_RowID IDRows($.File_Crimes_Optimized.File L, INTEGER ID) := TRANSFORM
    SELF.RowID := ID;
    SELF := L;
END;

EXPORT UID_Crimes := PROJECT($.File_Crimes_Optimized.File, IDRows(LEFT, COUNTER)) :
                                                                    PERSIST('~CLASS::jpav::PERSIST::UID_Crimes');
