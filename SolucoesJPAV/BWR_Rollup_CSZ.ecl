IMPORT $, STD;

persons_csz := RECORD
    UNSIGNED4 csz_id := $.STD_Persons.File.RecID;
    $.STD_Persons.File.City;
    $.STD_Persons.File.State;
    $.STD_Persons.File.Zipcode
END;

tablePersons := TABLE($.STD_Persons.File, persons_csz);
sortPersons := SORT(tablePersons, zipcode, state, city);

persons_csz RollCSV(persons_csz L, persons_csz R) := TRANSFORM
    SELF.csz_id := IF(L.csz_id < R.csz_id, L.csz_id, R.csz_id);
    SELF := L;
END;

Rollup_csz := ROLLUP(sortPersons, 
                    LEFT.Zipcode = RIGHT.Zipcode AND
                    LEFT.State = RIGHT.State AND 
                    LEFT.City = Right.City,
                    RollCSV(LEFT, RIGHT));

Rollup_csz_order := SORT(Rollup_csz, csz_id);

OUTPUT(Rollup_csz_order,,'~CLASS::JPAV::OUT::LookupCSZ', OVERWRITE);
