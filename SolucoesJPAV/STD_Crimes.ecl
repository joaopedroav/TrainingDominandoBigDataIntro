IMPORT $, STD;

EXPORT STD_Crimes := MODULE

    EXPORT Layout := RECORD 
        $.UID_Crimes.RowID;
        STRING8 day := STD.Date.FromStringToDate($.UID_Crimes.date[..10], '%m/%d/%Y');
        STRING6 time := STD.Date.FromStringToTime($.UID_Crimes.date[12..19], '%H:%M:%S');
        STRING3 formatZulu := $.UID_Crimes.date[20..];
        $.UID_Crimes.casenumber;
        $.UID_Crimes.block;
        $.UID_Crimes.iucr;
        $.UID_Crimes.primarytype;
        $.UID_Crimes.description;
        $.UID_Crimes.locationdescription;
        $.UID_Crimes.arrest;
        $.UID_Crimes.domestic;
        $.UID_Crimes.beat;
        $.UID_Crimes.district;
        $.UID_Crimes.ward;
        $.UID_Crimes.communityarea;
        $.UID_Crimes.fbicode;
        $.UID_Crimes.x_coordinate;
        $.UID_Crimes.y_coordinate;
        $.UID_Crimes.year;
        $.UID_Crimes.updatedon;
        $.UID_Crimes.latitude;
        $.UID_Crimes.longitude;
    END;

    EXPORT File := TABLE($.UID_Crimes, Layout) : PERSIST('~class::jpav::persist::std_crimes');

END;