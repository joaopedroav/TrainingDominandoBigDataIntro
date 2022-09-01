IMPORT $;

$.File_Persons_Slim.Layout Slimdown($.STD_Persons.Layout L, $.File_LookupCSZ.Layout R) := TRANSFORM
		SELF.CSZ_ID := R.CSZ_ID;
		SELF := L;
END;

SlimRecs := JOIN ($.STD_Persons.File, $.File_LookupCSZ.File,
                LEFT.ZipCode = RIGHT.ZipCode AND
                LEFT.State = RIGHT.State AND
                LEFT.City = RIGHT.City,
                Slimdown(LEFT, RIGHT), LEFT OUTER, LOOKUP);

OUTPUT(SlimRecs,,'~CLASS::JPAV::OUT::Persons_Slim', OVERWRITE);