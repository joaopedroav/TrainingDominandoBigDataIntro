IMPORT $;

persons := $.File_Persons.File;

FromFlorida := persons(state='FL');
OUTPUT(COUNT(FromFlorida), NAMED('Florida_People'));

FromFloridaAndMiami := persons(city='MIAMI', state='FL');
OUTPUT(COUNT(FromFloridaAndMiami), NAMED('Miami_AND_Florida_People'));

// FromMiamiNotFlorida := persons(city='MIAMI', state!='FL');
// OUTPUT(FromMiamiNotFlorida, NAMED('Florida_Not_Miami'));

FromFlMiZC33102 := persons(city='MIAMI', state='FL', zipcode='33102');
OUTPUT(COUNT(FromFlMiZC33102), NAMED('ZipCode33102'));

NameStartB := persons(firstname >= 'B', firstname < 'C');
OUTPUT(COUNT(NameStartB));

GenZ := persons(filedate[..4] > '2000');
OUTPUT(GenZ, NAMED('Date_2000'));
OUTPUT(COUNT(GenZ), NAMED('Date_2000_Count'));



OUTPUT($.YoungMaleFloridaPersons, NAMED('Floridians'));
OUTPUT(COUNT($.YoungMaleFloridaPersons), NAMED('Exerc08'));
