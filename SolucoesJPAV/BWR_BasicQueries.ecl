IMPORT $;

persons := $.File_Persons.File;
accounts := $.File_Accounts.File;

num_persons := COUNT(persons);
num_accounts := COUNT(accounts);

// num_total := num_persons + num_Accounts;
// OUTPUT(num_total);
 OUTPUT(num_persons);
// OUTPUT(num_accounts);

//OUTPUT($.File_Persons.File, {id, firstname});

OUTPUT(persons);

// OUTPUT(accounts, {});
//OUTPUT(persons);
//OUTPUT(persons, {id, streetadress, city, state, zipcode}, NAMED('Address_Info'));
OUTPUT(persons, {id, streetaddress, city, state, zipcode}, NAMED('Address_Info'));
