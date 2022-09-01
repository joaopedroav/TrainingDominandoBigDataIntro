IMPORT $, STD;

EXPORT STD_Persons := MODULE

    EXPORT Layout := RECORD
        $.UID_Persons.RecID;
        $.UID_Persons.ID;
        STRING15 Firstname := STD.Str.ToUpperCase($.UID_Persons.FirstName);
        STRING1 Middlename := STD.Str.ToUpperCase($.UID_Persons.Middlename);
        STRING25 Lastname := STD.Str.ToUpperCase($.UID_Persons.Lastname);
        STRING2 NameSuffix := STD.Str.ToUpperCase($.UID_Persons.NameSuffix);
        $.UID_Persons.BureauCode;
		$.UID_Persons.Gender;
		UNSIGNED4 BirthDate := (UNSIGNED4)$.UID_Persons.BirthDate;
		$.UID_Persons.StreetAddress;
		$.UID_Persons.City;
		$.UID_Persons.State;
		UNSIGNED3 ZipCode 	:= (UNSIGNED3)$.UID_Persons.ZipCode;
    END;

    EXPORT File := TABLE($.UID_Persons, Layout) : PERSIST('~CLASS::jpav::PERSIST::STD_Persons');

END;
