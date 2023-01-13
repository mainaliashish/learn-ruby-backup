require_relative 'database.rb'

# Connection parameters Constants
HOSTNAME = "127.0.0.1"
USERNAME = "root"
PASSWORD = ""
DATABASE = "quotes_ruby"

# Getting connection status
CONNECTION = Connection::Service.new(HOSTNAME, USERNAME, PASSWORD, DATABASE)

# A method to parse created_at and updated_at date timestamps
def parse_date(date)
  d = Date.parse("#{date}")
  d.strftime('%A, %d %b, %Y')
end

# simple wait counter
def wait_user
  puts "please wait..."
  1.upto(8) do |i|
    print "." * i 
    sleep(0.2)
  end
  puts ""
end


# Method to list out all quotes
def get_all_quotes(quotes)
  if quotes.to_a.count >= 1
      quotes.each do |quote|
        puts "-" * 100
        puts "\"💡 - #{quote['content']}\""
        # tab = "\t" * 8
        puts "👉️ added by - #{quote['username'].capitalize}"
        puts "👉️ posted date: #{parse_date(quote['created_at'])}"
        updated_date = quote['updated_at'] ? "#{parse_date(quote['updated_at'])}" : ""
        unless updated_date.empty?
          puts "👉️ updated date: #{parse_date(quote['updated_at'])}"
        end
        puts "🔑 Quote ID: #{quote['quote_id']}"
      end
  else
    puts "No Quotes Found. 😌"
  end
end

# method to create a new quote
def create_quote(username, email, quote, quote_id)
  if username.empty? || email.empty? || quote.empty? || quote_id.empty?
    message = "Username, Email, Quote and Quote ID can not be empty."
  else
    quote = CONNECTION.create_record(username, email, quote, quote_id)
    # message = "Yay, Quote was created Successfully."
  end
end

# method to show qoute by username
def get_quote_user(username)
  if username.empty?
    message = "Username can not be empty."
  else
    quote = CONNECTION.get_record_by_username(username)
  end
end

# method to update Quote by quote ID
def update_quote(username, email, quote, quote_id)
  if username.empty? || email.empty? || quote.empty? || quote_id.to_s.empty?
    message = "Username, Email, Quote and Quote ID can not be empty."
  else
    quote = CONNECTION.update_record(username, email, quote, quote_id)
  end
end

# Get Quote by ID
def find_quote_by_qid(id)
  quote = CONNECTION.get_record_by_qid(id)
end

# Delete Quote by quote ID
def delete_quote(id)
  quote = CONNECTION.delete_record(id)
end

# main program starts here, codes yet to be modularize
puts ""
puts "-" * 42
puts "#{"\t" * 1}WELCOME to the CRUD QUOTE APP 😋"
running = true
while running do
  seperator = "-"
  puts seperator * 42
  puts "Please choose the options for QUOTE APP."
  puts "Please press 1 to view all Quotes :"
  puts "Please press 2 to create a new Quote :"
  puts "Please press 3 to show quote by Username :"
  puts "Please press 4 to update quote :"
  puts "Please press 5 to delete quote :"
  puts "Please press q to Quit :"
  input = gets.chomp
  puts seperator * 42
  case input
    when '1'
      quotes = CONNECTION.get_all_records
      wait_user 
      get_all_quotes(quotes)
    when '2'
      puts "Enter your username : "
      username = gets.chomp
      puts "Enter your email : "
      email = gets.chomp
      puts "Enter your quote : "
      quote = gets.chomp
      puts "Enter your quote ID : "
      quote_id = gets.chomp
      status = create_quote(username, email, quote, quote_id)
      puts status
    when '3'
      puts "Please enter a username : "
      username = gets.chomp
      wait_user
      user_quotes = get_quote_user(username)
      get_all_quotes(user_quotes)
      puts "-" * 42
      if user_quotes.to_a.count >= 1 
        puts "Total Quote(s) by #{username} : #{user_quotes.to_a.count}"
      end
    when '4'
      puts "Enter Quote ID :"
      input = gets.chomp
      res = find_quote_by_qid(input.to_i)
      quote_id = input.to_i
      found_quote = res.to_a
      # puts found_quote
      puts "Quote found : #{found_quote[0]["content"]}"
      if res.to_a.count >= 1
        puts "Enter your username : "
        username = gets.chomp
        puts "Enter your email : "
        email = gets.chomp
        puts "Enter your quote : "
        quote = gets.chomp
        status = update_quote(username, email, quote, quote_id)
        puts status
      else
        puts "Not Quote with that Quote ID found"
      end
    when '5'
      puts "Enter Quote ID :"
      input = gets.chomp
      res = find_quote_by_qid(input.to_i)
      quote_id = input.to_i
      found_quote = res.to_a
      # puts found_quote
      if res.to_a.count >= 1
        puts "Quote found : #{found_quote[0]["content"]}"
        puts "Are you sure to delete this Quote (Y/n) : "
        confirm = gets.chomp.downcase
        if confirm == 'y'
          delete_quote(quote_id)
          puts "Quote was deleted Successfully.. 🥴"
        else
          puts "Something went wrong."
        end
      else
        puts "No Quote found."
      end
    when 'q','Q'
      puts "Are you sure to quit the program (Y/n) : "
      input_q = gets.chomp
      if input_q.downcase == 'y'
        CONNECTION.close_connection
        puts "-" * 42
        puts "Closing database connection..."
        wait_user
        puts "See you soon mate, thank You.. 😥 "
        running = false
      else
        running = true
      end
    else
      puts "Incorrect choice."
    end
end


