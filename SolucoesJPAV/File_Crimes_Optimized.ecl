EXPORT File_Crimes_Optimized := MODULE

    EXPORT NewLayout := RECORD
        UNSIGNED4 id;
        STRING9 casenumber;
        STRING22 date;
        STRING38 block;
        STRING4 iucr;
        STRING33 primarytype;
        STRING60 description;
        STRING53 locationdescription;
        STRING5 arrest;
        STRING5 domestic;
        STRING4 beat;
        STRING3 district;
        UNSIGNED1 ward;
        UNSIGNED1 communityarea;
        STRING3 fbicode;
        UNSIGNED4 x_coordinate;
        UNSIGNED4 y_coordinate;
        UNSIGNED4 year;
        STRING22 updatedon;
        REAL8 latitude;
        REAL8 longitude;
    END;

    EXPORT File := DATASET('~class::jpav::cityofchicago::crimes_-_2001_to_present.csv', NewLayout, CSV (heading(1)));

END;
