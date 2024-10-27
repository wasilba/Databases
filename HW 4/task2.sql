
INSERT INTO petEvent (petname, eventdate, eventtype, remark)
VALUES ('Fluffy', '2020-10-15', 'vet', 'antibiotics');

INSERT INTO petPet (petname, owner, species, gender, birth)
VALUES ('Hammy', 'Diane', 'hamster', 'M', '2010-10-30');

INSERT INTO petEvent (petname, eventdate, eventtype, remark)
VALUES ('Hammy', '2020-10-15', 'vet', 'antibiotics');

INSERT INTO petPet (petname, owner, species, gender, birth)
VALUES 
    ('Kitten1', 'Fluffy', 'cat', 'M', '2020-10-15'),
    ('Kitten2', 'Fluffy', 'cat', 'M', '2020-10-15'),
    ('Kitten3', 'Fluffy', 'cat', 'F', '2020-10-15'),
    ('Kitten4', 'Fluffy', 'cat', 'F', '2020-10-15'),
    ('Kitten5', 'Fluffy', 'cat', 'F', '2020-10-15');

INSERT INTO petEvent (petname, eventdate, eventtype, remark)
VALUES ('Claws', '1997-08-03', 'injury', 'broke rib');

UPDATE petPet
SET death = '2020-09-01'
WHERE petname = 'Puffball';

DELETE FROM petPet
WHERE owner = 'Harold' AND species = 'dog';
