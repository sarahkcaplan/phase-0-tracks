require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("interestingquotes.db")

create_quotes_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS quotes(
    id INTEGER PRIMARY KEY,
    quote VARCHAR(1000)
  )
SQL

db.execute(create_quotes_table_cmd)