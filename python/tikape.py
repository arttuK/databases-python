###
# tikape

import sqlite3


# UI
ui_select = input('mita \n')

if ui_select == 1:
    print('jei')


# CREATE DATABASE

## Database connection
db = sqlite3.connect('c:/Users/arttu/tikape/sql/tracking.db')
db.isolation_level = None
c = db.cursor()

## Create tables
sql_schema = open('c:/Users/arttu/tikape/sql/1-schema.sql', 'r').read()
c.executescript(sql_schema)

## Add place
c.execute('''INSERT INTO Paikka
(paikka)
VALUES
("Naarajarvi");''')

## Add customer
c.execute('''INSERT INTO Asiakas
(asiakas)
VALUES
("Matti");''')

## Add delivery
c.execute('''INSERT INTO Paketti
(paketti, asiakas_id)
VALUES
("A1700", 1);''')

## Add event
c.execute('''INSERT INTO Tapahtuma
(paketti_id, paikka_id, pvm, kuvaus)
VALUES
(1, 1, datetime('2020-02-10 20:01:10'), 'lahetetty');''')


# QUERY DATA

c.execute('SELECT * FROM Paikka')
print(c.fetchall())

 