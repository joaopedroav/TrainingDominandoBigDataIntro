IMPORT $, STD;

persons_csz := RECORD
    UNSIGNED csz_id;
    STRING city;
    STRING2 state;
    STRING zipcode;
END;

EXPORT File_LookupCSZ;