IMPORT $, DataPatterns;

// OUTPUT($.File_Accounts.File);
// CHOOSEN($.File_Accounts.File, 200);
//OUTPUT($.File_Persons.File)
//CHOOSEN($.File_Accounts.File, 1000);

crimes_raw := $.File_Crimes_Optimized.File;
OUTPUT(crimes_raw, NAMED('Raw_data'));

// DataPatterns.BestRecordStructure(crimes_raw);
// DataPatterns.Benford(crimes_raw, 'communityarea');

// persons_raw := $.File_Persons.File;
// OUTPUT(persons_raw, NAMED('persons'))

OUTPUT($.YoungMaleFloridaPersons);
