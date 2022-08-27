IMPORT $;

persons := $.File_Persons.File;
IsFloridian := persons.state = 'FL';
IsMale := persons.gender = 'M';
IsBorn80 := persons.birthdate[..4] > '1979';

EXPORT IsYoungMaleFloridian := IsFloridian AND IsMale AND IsBorn80;

