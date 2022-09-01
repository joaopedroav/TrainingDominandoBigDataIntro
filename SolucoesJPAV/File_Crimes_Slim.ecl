IMPORT $;

EXPORT File_Crimes_Slim := MODULE 

    EXPORT Layout := RECORD 
        RECORDOF($.STD_Crimes.File) AND NOT [block, communityarea, district];
        UNSIGNED4 BCD_ID;
    END;

    SHARED Filename := '~CLASS::JPAV::OUT::Crimes_Slim';
    EXPORT File := DATASET(Filename, Layout, FLAT);

END;