-- SQLite

-- Luo sovelluksen tarvitsemat taulut tyhjään tietokantaan

/* ASIAKAS on paketin tilaaja.
Jokaisella asiakkaalla on eri nimi. */
CREATE TABLE Asiakas (
id INTEGER PRIMARY KEY AUTOINCREMENT,
asiakas TEXT,
CONSTRAINT asiakas_unique UNIQUE (asiakas)
);

/* PAIKKA on jokin kohde paketin matkan varrella, jossa paketti voidaan skannata.
Jokaisella paikalla on eri nimi. */
CREATE TABLE Paikka (
id INTEGER PRIMARY KEY AUTOINCREMENT,
paikka TEXT,
CONSTRAINT paikka_unique UNIQUE (paikka)
);

/* PAKETILLA on seurantakoodi, jolla siihen voidaan viitata.
Jokaisella paketilla on eri seurantakoodi.
Paketti liittyy tiettyyn asiakkaaseen. */
CREATE TABLE Paketti (
id INTEGER PRIMARY KEY AUTOINCREMENT,
paketti TEXT,
asiakas_id INTEGER,
CONSTRAINT paketti_unique UNIQUE (paketti),
CONSTRAINT asiakas_fk FOREIGN KEY (asiakas_id) REFERENCES Asiakas(id) 
);

/* TAPAHTUMA liittyy tiettyyn pakettiin ja tiettyyn paikkaan.
Lisäksi tapahtumaan kuuluu kuvaus ja lisäyshetki
(päivämäärä ja kellonaika). */
CREATE TABLE Tapahtuma (
id INTEGER PRIMARY KEY AUTOINCREMENT,
paketti_id TEXT,
paikka_id INTEGER,
pvm DATE,
kuvaus TEXT,
CONSTRAINT paketti_fk FOREIGN KEY (paketti_id) REFERENCES Paketti(id),
CONSTRAINT paikka_fk FOREIGN KEY (paikka_id) REFERENCES Paikka(id)
);