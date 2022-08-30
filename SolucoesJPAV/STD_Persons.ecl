IMPORT $;
IMPORT STD;

tbl := TABLE($.File_Persons.File, {Firstname, LastName});
tbl;

new_persons := RECORD
    UNSIGNED   recId;  
	STRING     Firstname;
	STRING     Lastname;
END;

new_persons transformNewPersons(tbl Le, UNSIGNED cnt) := TRANSFORM
    SELF.recId := cnt;
    SELF.Firstname := STD.Str.ToUpperCase(Le.FirstName);
    SELF.Lastname := STD.Str.ToUpperCase(Le.Lastname);
    SELF := Le;
END;

new_persons_exec := PROJECT(tbl, transformNewPersons(LEFT, COUNTER)) : PERSIST('~CLASS::jpav::PERSIST::STD_Persons');
new_persons_exec;

