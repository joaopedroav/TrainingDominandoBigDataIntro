EXPORT File_LookupBCD := MODULE 

    EXPORT Layout := RECORD 
        UNSIGNED4 BCD_ID;
        STRING38 block;
        UNSIGNED1 communityarea;
        STRING3 district;
    END;

    SHARED Filename := '~CLASS::JPAV::OUT::LookupBCD';
    EXPORT File := DATASET(Filename, Layout, FLAT);

END;