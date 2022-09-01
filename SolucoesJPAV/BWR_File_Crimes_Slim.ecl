IMPORT $;

$.File_Crimes_Slim.Layout Slimdown($.STD_Crimes.Layout L, $.File_LookupBCD.Layout R) := TRANSFORM
    SELF.BCD_ID := R.BCD_ID;
    SELF := L;
END;

SlimRecs := JOIN(
    $.STD_Crimes.File, $.File_LookupBCD.File,
        LEFT.block = RIGHT.block AND 
        LEFT.communityarea = RIGHT.communityarea AND 
        LEFT.district = RIGHT.district,
    Slimdown(LEFT, RIGHT), LEFT OUTER, LOOKUP);

OUTPUT(SlimRecs,,'~CLASS::JPAV::OUT::Crimes_Slim', OVERWRITE);