require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("interestingquotes.db")

create_quotes_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS quotes(
    id INTEGER PRIMARY KEY,
    quote VARCHAR(1000)
  )
SQL

create_successes_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS successes(
    id INTEGER PRIMARY KEY,
    quote INT,
    friend INT,
    success BOOLEAN,
    FOREIGN KEY(quote) REFERENCES quotes(id),
    FOREIGN KEY(friend) REFERENCES friends(id)
  )
SQL

create_friends_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS friends(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    gender VARCHAR(10)
  )
SQL

def add_friends(db, name, gender)
  db.execute("INSERT INTO friends (name, gender) VALUES (?, ?)", [name, gender])
end

def add_quotes(db, quote)
  db.execute("INSERT INTO quotes (quote) VALUES (?)", [quote])
end

def add_past_successes(db, friend, quote, success)
  db.execute("INSERT INTO successes (friend, quote, success) VALUES (?, ?, ?)", [friend, quote, success])
end

# 10.times do
#   add_past_successes(db, rand(10), rand(200), rand(1))
# end


# 200.times do
#   add_quotes(db, Faker::MostInterestingManInTheWorld.quote)
# end

# 10.times do
#   add_friends(db, Faker::Name.name, Faker::Demographic.sex)
# end


# db.execute("DROP TABLE friends")
# db.execute("DROP TABLE quotes")
# db.execute("DROP TABLE successes")


# db.execute(create_quotes_table_cmd)
# db.execute(create_friends_table_cmd)
db.execute(create_successes_table_cmd)

# friend_full_name = db.execute("SELECT name FROM friends;")

# def get_first_name(friend_full_name)
#   friend_full_name.each do |name|
#     friend_full_name.split(" ")
#     puts friend_full_name
#     friend_first_name = friend_full_name[0]
#     puts friend_first_name
#   end
# end

# get_first_name(friend_full_name)