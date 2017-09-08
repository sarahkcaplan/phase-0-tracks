require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("interestingquotes.db")

create_quotes_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS quotes(
    id INTEGER PRIMARY KEY,
    quote VARCHAR(1000)
  )
SQL

create_friends_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS friends(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    date TEXT,
    quote INT,
    success BOOLEAN,
    FOREIGN KEY(quote) REFERENCES quotes(id)
  )
SQL

db.execute(create_quotes_table_cmd)
db.execute(create_friends_table_cmd)