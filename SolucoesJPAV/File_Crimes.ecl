EXPORT File_Crimes := MODULE

    EXPORT Layout := RECORD
        UNSIGNED8 ID;
        STRING8 CaseNumber;
        STRING23 Date;
        STRING30 Block;
        STRING4 IUCR;
        STRING20 PrimaryType;
        STRING50 Description;
        STRING50 LocationDescription;
        BOOLEAN Arrest;
        BOOLEAN Domestic;
        STRING4 Beat;
        STRING3 District;
        UNSIGNED2 Ward;
        UNSIGNED2 CommunityArea;
        STRING2 FBICode;
        STRING7 CoordinateX;
        STRING7 CoordinateY;
        UNSIGNED4 Year;
        STRING23 UpdatedOn;
        STRING15 Latitude;
        STRING15 Longitude;
        STRING40 Location;
    END;

    EXPORT File := DATASET('~class::jpav::cityofchicago::crimes_-_2001_to_present.csv', Layout, CSV (heading(1)));

END;