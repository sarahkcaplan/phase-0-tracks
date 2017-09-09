require 'sqlite3'
require 'faker'

DB = SQLite3::Database.new("interestingquotes.DB")

class Wingperson

  def initialize
    @quote_id = ''
    @friend_name = ''
    @friend_id = ''
    @success = ''
  end

  def add_quotes(db, quote) # needed to get interesting quotes about your friend
    DB.execute("INSERT INTO quotes (quote) VALUES (?)", [quote])
  end

  def add_friends(db, name, gender) # for dummy data only
    new_friend = DB.execute("INSERT INTO friends (name, gender) VALUES (?, ?)", [name, gender])
    @friend_id = new_friend
  end

  def add_past_successes(db, friend, quote, success) # for dummy data only
    DB.execute("INSERT INTO successes (friend, quote, success) VALUES (?, ?, ?)", [friend, quote, success])
  end

  def get_new_quote
    number = rand(200)
    DB.execute("SELECT quote FROM quotes WHERE id = #{number} ")
  end

  def rate_success(reaction)
    if reaction == "Great!"
      @success = true
    elsif reaction == "Uhhm..."
      @success = false
    else
      @success = false
    end
    DB.execute(create_success_rating)
  end

  create_success_rating = <<-SQL
    INSERT INTO successes(
      friend, quote, success)
    VALUES( @friend_id, @quote_id, @success)
  SQL
end

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
    gender VARCHAR(10)
  )
SQL

create_successes_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS successes(
    id INTEGER PRIMARY KEY,
    friend INT,
    quote INT,
    success BOOLEAN,
    FOREIGN KEY(friend) REFERENCES friends(id),
    FOREIGN KEY(quote) REFERENCES quotes(id)
  )
SQL

## Use to create test data

# 10.times do
#   add_past_successes(DB, rand(1..10), rand(1..200), rand(2))
# end

# 10.times do
#   add_friends(DB, Faker::Name.name, Faker::Demographic.sex)
# end

## Use to remove test data tables
# DB.execute("DROP TABLE friends")
# DB.execute("DROP TABLE quotes")
# DB.execute("DROP TABLE successes")

## Driver code
# DB.execute(create_quotes_table_cmd)
# DB.execute(create_friends_table_cmd)
# DB.execute(create_successes_table_cmd)

w1 = Wingperson.new

# 200.times do
#   w1.add_quotes(DB, Faker::MostInterestingManInTheWorld.quote)
# end

puts "You're an awesome wingperson. What's your friend's name?"
friend_name = gets.chomp
w1.add_friends(DB, friend_name, 'male')
puts "Drop this 'fact' about #{friend_name} into conversation. #{friend_name} is sooo interesting!"
puts
puts w1.get_new_quote
puts
puts "So, how did that go? (Great! or Uhmm...)"
reaction = gets.chomp
w1.rate_success(reaction)
puts "Well, you're a great wingperson."

