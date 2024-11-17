import sqlite3 as sql

def listExtension():
  con = sql.connect(".database/data_source.db")
  cur = con.cursor()
  data = cur.execute('SELECT * FROM extension').fetchall()
  con.close()
  return data

def listMovies():
  con = sql.connect(".database/data_source.db")
  cur = con.cursor()
  data = cur.execute('SELECT * FROM movies').fetchall()
  con.close()
  return data