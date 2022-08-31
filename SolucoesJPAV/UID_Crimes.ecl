IMPORT $;

Layout_Crimes_RowID := RECORD
    UNSIGNED4 RowID;
    // UNSIGNED2 Hour;
    // UNSIGNED2 Minute;
    // UNSIGNED2 Second;
    $.File_Crimes_Optimized.File;
END;

Layout_Crimes_RowID IDRows($.File_Crimes_Optimized.File L, INTEGER ID) := TRANSFORM
    SELF.RowID := ID;
    // SELF.Hour := (UNSIGNED2)L.date[11..12];
    // SELF.Minute := (UNSIGNED2)L.date[14..15];
    // SELF.Second := (UNSIGNED2)L.date[17..18];
    SELF := L;
END;

EXPORT UID_Crimes := PROJECT($.File_Crimes_Optimized.File, IDRows(LEFT, COUNTER)) :
                                                                    PERSIST('~CLASS::jpav::PERSIST::UID_Crimes');
