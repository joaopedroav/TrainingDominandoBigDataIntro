IMPORT $;

// OUTPUT($.File_Accounts.File);
// CHOOSEN($.File_Accounts.File, 200);
//OUTPUT($.File_Persons.File)
//CHOOSEN($.File_Accounts.File, 1000);

crimes_raw := $.File_Crimes.File;
OUTPUT(crimes_raw, NAMED('Raw_data'));

// persons_raw := $.File_Persons.File;
// OUTPUT(persons_raw, NAMED('persons'))
