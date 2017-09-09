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
    gender VARCHAR(10),
    quote INT,
    success BOOLEAN,
    FOREIGN KEY(quote) REFERENCES quotes(id)
  )
SQL

def add_friends(db, name, gender, quote, success)
  db.execute("INSERT INTO friends (name, gender, quote, success) VALUES (?, ?, ?, ?)", [name, gender, quote, success])
end

# def add_quotes(db, quote)
#   db.execute("INSERT INTO QUOTES (quote) VALUES (?)", [quote])
# end

# 200.times do
#   add_quotes(db, Faker::MostInterestingManInTheWorld.quote)
# end

10.times do
  add_friends(db, Faker::Name.name, Faker::Demographic.sex, 0, 'false')
end

db.execute(create_quotes_table_cmd)
# db.execute("DROP TABLE friends")
db.execute(create_friends_table_cmd)