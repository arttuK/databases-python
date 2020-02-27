-- SQLite

/* Lisää uusi paketti tietokantaan, kun annetaan paketin seurantakoodi ja
   asiakkaan nimi. Asiakkaan tulee olla valmiiksi tietokannassa. */

INSERT INTO Paketti
(paketti, asiakas_id)
VALUES
("A1700", 1);