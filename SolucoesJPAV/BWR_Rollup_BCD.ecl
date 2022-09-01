IMPORT $;

Crimes_BCD := RECORD
    UNSIGNED4 BCD_ID := $.STD_Crimes.File.RowId;
    $.STD_Crimes.File.block;
    $.STD_Crimes.File.communityarea;
    $.STD_Crimes.File.district;
END;

tableCrimesBcd := TABLE($.STD_Crimes.File, Crimes_BCD);
sortCrimesBcd := SORT(tableCrimesBcd, district, communityarea, block);

Crimes_BCD RollCSV(Crimes_BCD L, Crimes_BCD R) := TRANSFORM
    SELF.BCD_ID := IF(L.BCD_ID < R.BCD_ID, L.BCD_ID, R.BCD_ID);
    SELF := L;
END;

RollupBCD := ROLLUP(sortCrimesBcd,
                    LEFT.district = RIGHT.district AND
                    LEFT.communityarea = RIGHT.communityarea AND
                    LEFT.block = RIGHT.block,
                    RollCSV(LEFT, RIGHT));

Order_BCD_ID := SORT(RollupBCD, BCD_ID);

OUTPUT(Order_BCD_ID,,'~CLASS::JPAV::OUT::LookupBCD', OVERWRITE);