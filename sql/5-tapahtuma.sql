-- SQLite

/* Kun paketti skannataan, syntyy tapahtuma.
Tapahtuma liittyy tiettyyn pakettiin ja tiettyyn paikkaan.
Lisäksi tapahtumaan kuuluu kuvaus ja lisäyshetki
(päivämäärä ja kellonaika). */

INSERT INTO Tapahtuma
(paketti_id, paikka_id, pvm, kuvaus)
VALUES
(1, 1, datetime('2020-02-10 20:01:10'), 'lahetetty');