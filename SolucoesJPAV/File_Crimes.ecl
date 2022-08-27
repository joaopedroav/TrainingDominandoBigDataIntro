EXPORT File_Crimes := MODULE

    EXPORT Layout := RECORD
        STRING ID;
        STRING11 CaseNumber;
        STRING22 Date;
        STRING38 Block;
        STRING4 IUCR;
        STRING33 PrimaryType;
        STRING60 Description;
        STRING53 LocationDescription;
        STRING6 Arrest;
        STRING8 Domestic;
        STRING4 Beat;
        STRING8 District;
        STRING4 Ward;
        STRING14 CommunityArea;
        STRING8 FBICode;
        STRING12 X_Coordinate;
        STRING12 Y_Coordinate;
        UNSIGNED4 Year;
        STRING22 UpdatedOn;
        STRING12 Latitude;
        STRING13 Longitude;
        // STRING29 Location;
    END;

    EXPORT File := DATASET('~class::jpav::cityofchicago::crimes_-_2001_to_present.csv', Layout, CSV (heading(1)));

END;