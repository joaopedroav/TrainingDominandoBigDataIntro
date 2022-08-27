IMPORT $;

persons := $.File_Persons.File;

EXPORT YoungMaleFloridaPersons := persons($.IsYoungMaleFloridian);
