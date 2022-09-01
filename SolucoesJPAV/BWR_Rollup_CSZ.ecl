IMPORT $, STD; 

tablePersons := TABLE($.File_Persons_Rec, {recId, city, state, zipCode});

sortPersons := SORT(tablePersons, city, state, zipcode);

dedupPersons :=  DEDUP(sortPersons, city, state, zipcode);
dedupPersons;

// personsOg := $.File_Persons_Rec;
// personsOg;