require 'sqlite3'
require 'faker'
require 'date'
require 'time'


def print_welcome_message(database)
  puts "\e[H\e[2J"
  puts "*" * 150
  puts "WELCOME TO YOUR ONLINE CONTACT LIST".center(150)
  puts "*" * 150

  print_database_contents(database)

  puts "\nWhat would you like to do? (enter corresponding number):\n\n"
  puts "1. Add a new entry"
  puts "2. Update an existing entry"
  puts "3. Delete an existing entry"
  puts "4. Delete all records"
  puts "5. Search records"
  puts "6. Generate fake data"
  puts "7. Exit program\n\n"

  input = gets.chomp

  case input
  when "1"
    add_new_entry(database)
  when "2"
    update_existing_entry(database)
  when "3"
    delete_existing_entry(database)
  when "4"
    delete_database(database)
  when "5"
    search_database(database)
  when "6"
    generate_fake_data(database)
  when "7"
    abort
  end
end

def add_new_entry(database)
  puts "\e[H\e[2J"
  puts "*" * 150
  puts "ADDING A NEW ENTRY TO YOUR CONTACT LIST".center(150)
  puts "*" * 150

  puts "\nEnter First Name:"
  first_name = gets.chomp
  puts "Enter Last Name:"
  last_name = gets.chomp
  puts "Enter Birthdate (MM/DD/YYYY):"
  birthday = gets.chomp
  puts "Enter Phone Number (XXX-XXX-XXXX):"
  phone_number = gets.chomp
  puts "Enter Email:"
  email = gets.chomp
  date_added = Time.now.strftime("%m/%d/%Y")

  database.execute("INSERT INTO contact_list (first_name, last_name, birthday, phone_number, email, date_added) VALUES (?, ?, ?, ?, ?, ?)", [first_name, last_name, birthday, phone_number, email, date_added])

  puts "\n\nENTRY ADDED SUCCESSFULLY. PRESS ENTER TO CONTINUE..."
  input = gets.chomp

  if input
    print_welcome_message(database)
  end
end

def print_database_contents(database)
  contacts = database.execute("SELECT * FROM contact_list")

  puts "-" * 150
  print " ".ljust(10), "Name".ljust(25), "Birthday".ljust(20), "Phone Number".ljust(20), "Email".ljust(45), "Date Added\n"
  puts "-" * 150

  contacts.each do |contact|
    print (contact['id'].to_s+".").ljust(10), (contact['first_name']+" "+contact['last_name']).ljust(25), contact['birthday'].to_s.ljust(20), contact['phone_number'].to_s.ljust(20), contact['email'].ljust(45), contact['date_added'], "\n"
  end

  puts "-" * 150
end

