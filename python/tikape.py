###
# tikape

# Setup
import sqlite3

###
# Data

# Database connection
db = sqlite3.connect('c:/Users/arttu/tikape/sql/tracking.db')
db.isolation_level = None
c = db.cursor()

## Create tables
schemaSql = open('c:/Users/arttu/tikape/sql/1-schema.sql', 'r').read()
c.executescript(schemaSql)

## Add place

## Add customer

## Add package

## Add event

###
# Query data

 