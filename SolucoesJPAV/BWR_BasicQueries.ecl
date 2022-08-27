IMPORT $;

persons := $.File_Persons.File;
accounts := $.File_Accounts.File;

OUTPUT(persons, NAMED('Persons'));
OUTPUT(accounts, NAMED('Accounts'));

num_persons := COUNT(persons);
num_accounts := COUNT(accounts);

OUTPUT(num_persons, NAMED('Num_Persons'));
OUTPUT(num_accounts, NAMED('Num_Accounts'));

OUTPUT($.File_Persons.File, {id, firstname}, NAMED('Passo_6'));

OUTPUT(persons, {id, streetaddress, city, state, zipcode}, NAMED('Address_Info'));
