IMPORT $, STD;

new_persons := RECORD
    UNSIGNED   recId;  
	STRING     Firstname;
	STRING     Lastname;
    $.File_Persons.Layout AND NOT [firstname, Lastname];
END;

new_persons transformNewPersons($.File_Persons.File Le, UNSIGNED cnt) := TRANSFORM
    SELF.recId := cnt;
    SELF.Firstname := STD.Str.ToUpperCase(Le.FirstName);
    SELF.Lastname := STD.Str.ToUpperCase(Le.Lastname);
    SELF := Le;
END;

EXPORT File_Persons_Rec := PROJECT($.File_Persons.File, transformNewPersons(LEFT, COUNTER)) : PERSIST('~CLASS::jpav::PERSIST::STD_Persons');

