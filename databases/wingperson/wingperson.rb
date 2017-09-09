require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("interestingquotes.db")

def wingperson

  def initialize
    @quote_id = ''
    @friend_name = ''
    @friend_id = ''
    @success = ''
  end

  def add_quotes(db, quote) # needed to get interesting quotes about your friend
    db.execute("INSERT INTO quotes (quote) VALUES (?)", [quote])
  end

  def add_friends(db, name, gender) # for dummy data only
    new_friend = db.execute("INSERT INTO friends (name, gender) VALUES (?, ?)", [name, gender])
    @friend_id = new_friend
  end

  def add_past_successes(db, friend, quote, success) # for dummy data only
    db.execute("INSERT INTO successes (friend, quote, success) VALUES (?, ?, ?)", [friend, quote, success])
  end

  def get_new_quote
    number = rand(200)
    db.execute("SELECT quote FROM quotes WHERE id = #{number} ")
  end

  def rate_success(rating)
    if reaction == "Great!"
      @success = true
    else reaction == "Uhhm..."
      @success = false
    end
    db.execute(create_success_rating)
  end

  create_success_rating = <<-SQL
    INSERT INTO successes(
      friend, quote, success)
    VALUES( @friend_id, @quote_id, @success)
  SQL

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
end

## Use to create test data

# 10.times do
#   add_past_successes(db, rand(1..10), rand(1..200), rand(2))
# end

# 10.times do
#   add_friends(db, Faker::Name.name, Faker::Demographic.sex)
# end

## Use to remove test data tables
# db.execute("DROP TABLE friends")
# db.execute("DROP TABLE quotes")
# db.execute("DROP TABLE successes")

## Driver code
db.execute(create_quotes_table_cmd)
db.execute(create_friends_table_cmd)
db.execute(create_successes_table_cmd)

# 200.times do
#   add_quotes(db, Faker::MostInterestingManInTheWorld.quote)
# end

