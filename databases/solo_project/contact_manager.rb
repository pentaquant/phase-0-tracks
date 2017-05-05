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

def update_existing_entry(database)
  puts "\e[H\e[2J"
  puts "*" * 150
  puts "UPDATING AN EXISTING ENTRY".center(150)
  puts "*" * 150

  print_database_contents(database)

  puts "\nWhich entry would you like to update? (enter corresponding number):\n\n"
  input = gets.chomp.to_i

  contacts = database.execute("SELECT * FROM contact_list WHERE id = ?", [input])

  puts "\e[H\e[2J"

  puts "*" * 150
  puts "UPDATING SELECTED ENTRY".center(150)
  puts "*" * 150

  puts "-" * 150
  print " ".ljust(10), "Name".ljust(25), "Birthday".ljust(20), "Phone Number".ljust(20), "Email".ljust(45), "Date Added\n"
  puts "-" * 150

  contacts.each do |contact|
    print (contact['id'].to_s+".").ljust(10), (contact['first_name']+" "+contact['last_name']).ljust(25), contact['birthday'].to_s.ljust(20), contact['phone_number'].to_s.ljust(20), contact['email'].ljust(45), contact['date_added'], "\n"
  end

  puts "-" * 150

  puts "\nEnter New First Name:"
  first_name = gets.chomp
  puts "Enter New Last Name:"
  last_name = gets.chomp
  puts "Enter New Birthdate (MM/DD/YYYY):"
  birthday = gets.chomp
  puts "Enter New Phone Number (XXX-XXX-XXXX):"
  phone_number = gets.chomp
  puts "Enter New Email:"
  email = gets.chomp
  date_added = Time.now.strftime("%m/%d/%Y")

  database.execute("UPDATE contact_list SET first_name = ?, last_name = ?, birthday = ?, phone_number = ?, email = ?, date_added = ? WHERE id = ?", [first_name, last_name, birthday, phone_number, email, date_added, input])

  puts "\n\nENTRY UPDATED SUCCESSFULLY. PRESS ENTER TO CONTINUE..."
  user_input = gets.chomp

  if user_input
    print_welcome_message(database)
  end
end

def update_existing_entry(database)
  puts "\e[H\e[2J"
  puts "*" * 150
  puts "UPDATING AN EXISTING ENTRY".center(150)
  puts "*" * 150

  print_database_contents(database)

  puts "\nWhich entry would you like to update? (enter corresponding number):\n\n"
  input = gets.chomp.to_i

  contacts = database.execute("SELECT * FROM contact_list WHERE id = ?", [input])

  puts "\e[H\e[2J"

  puts "*" * 150
  puts "UPDATING SELECTED ENTRY".center(150)
  puts "*" * 150

  puts "-" * 150
  print " ".ljust(10), "Name".ljust(25), "Birthday".ljust(20), "Phone Number".ljust(20), "Email".ljust(45), "Date Added\n"
  puts "-" * 150

  contacts.each do |contact|
    print (contact['id'].to_s+".").ljust(10), (contact['first_name']+" "+contact['last_name']).ljust(25), contact['birthday'].to_s.ljust(20), contact['phone_number'].to_s.ljust(20), contact['email'].ljust(45), contact['date_added'], "\n"
  end

  puts "-" * 150

  puts "\nEnter New First Name:"
  first_name = gets.chomp
  puts "Enter New Last Name:"
  last_name = gets.chomp
  puts "Enter New Birthdate (MM/DD/YYYY):"
  birthday = gets.chomp
  puts "Enter New Phone Number (XXX-XXX-XXXX):"
  phone_number = gets.chomp
  puts "Enter New Email:"
  email = gets.chomp
  date_added = Time.now.strftime("%m/%d/%Y")

  database.execute("UPDATE contact_list SET first_name = ?, last_name = ?, birthday = ?, phone_number = ?, email = ?, date_added = ? WHERE id = ?", [first_name, last_name, birthday, phone_number, email, date_added, input])

  puts "\n\nENTRY UPDATED SUCCESSFULLY. PRESS ENTER TO CONTINUE..."
  user_input = gets.chomp

  if user_input
    print_welcome_message(database)
  end
end

def delete_existing_entry(database)
  puts "\e[H\e[2J"

  puts "*" * 150
  puts "DELETING AN EXISTING ENTRY".center(150)
  puts "*" * 150

  print_database_contents(database)

  puts "\nWhich entry would you like to delete? (enter corresponding number):\n\n"
  input = gets.chomp.to_i

  database.execute("DELETE FROM contact_list WHERE id = ?", [input])

  puts "\n\nENTRY DELETED SUCCESSFULLY. PRESS ENTER TO CONTINUE..."
  input = gets.chomp

  if input
    print_welcome_message(database)
  end
end


def delete_database(database)
  database.execute("DROP TABLE IF EXISTS contact_list")

  puts "\n\nALL RECORDS DELETED SUCCESSFULLY. PRESS ENTER TO CONTINUE..."
  input = gets.chomp

  if input
    begin_program
  end
end

def search_database(database)
  puts "\e[H\e[2J"
  puts "*" * 150
  puts "SEARCHING FOR AN EXISTING ENTRY".center(150)
  puts "*" * 150

  puts "\nWhat would you like to do? (enter corresponding number):\n\n"
  puts "1. Search by First Name"
  puts "2. Search by Last Name"
  puts "3. Search by Birthdate"
  puts "4. Search by Phone Number"
  puts "5. Search by Email"
  puts "6. Back to Main Menu\n\n"

  input = gets.chomp

  case input
  when "1"
    search_by_first_name(database)
  when "2"
    search_by_last_name(database)
  when "3"
    search_by_birthdate(database)
  when "4"
    search_by_phone_number(database)
  when "5"
    search_by_email(database)
  when "6"
    print_welcome_message(database)
  end
end


def search_by_first_name(database)
  puts "\nEnter First Name:"
  first_name = gets.chomp

  puts "\e[H\e[2J"
  puts "*" * 150
  puts "RESULTS FOR FIRST NAME \"#{first_name}\"".center(150)
  puts "*" * 150

  contacts = database.execute("SELECT * FROM contact_list WHERE first_name = ?", [first_name])

  puts "-" * 150
  print " ".ljust(10), "Name".ljust(25), "Birthday".ljust(20), "Phone Number".ljust(20), "Email".ljust(45), "Date Added\n"
  puts "-" * 150

  contacts.each do |contact|
    print (contact['id'].to_s+".").ljust(10), (contact['first_name']+" "+contact['last_name']).ljust(25), contact['birthday'].to_s.ljust(20), contact['phone_number'].to_s.ljust(20), contact['email'].ljust(45), contact['date_added'], "\n"
  end

  puts "-" * 150

  puts "\n\nPRESS ENTER TO CONTINUE..."
  input = gets.chomp

  if input
    search_database(database)
  end
end


def search_by_last_name(database)
  puts "\nEnter Last Name:"
  last_name = gets.chomp

  puts "\e[H\e[2J"
  puts "*" * 150
  puts "RESULTS FOR LAST NAME \"#{last_name}\"".center(150)
  puts "*" * 150

  contacts = database.execute("SELECT * FROM contact_list WHERE last_name = ?", [last_name])

  puts "-" * 150
  print " ".ljust(10), "Name".ljust(25), "Birthday".ljust(20), "Phone Number".ljust(20), "Email".ljust(45), "Date Added\n"
  puts "-" * 150

  contacts.each do |contact|
    print (contact['id'].to_s+".").ljust(10), (contact['first_name']+" "+contact['last_name']).ljust(25), contact['birthday'].to_s.ljust(20), contact['phone_number'].to_s.ljust(20), contact['email'].ljust(45), contact['date_added'], "\n"
  end

  puts "-" * 150

  puts "\n\nPRESS ENTER TO CONTINUE..."
  input = gets.chomp

  if input
    search_database(database)
  end
end


def search_by_birthdate(database)
  puts "\nEnter Birthdate (MM/DD/YYYY):"
  birthdate = gets.chomp

  puts "\e[H\e[2J"
  puts "*" * 150
  puts "RESULTS FOR BIRTHDATE \"#{birthdate}\"".center(150)
  puts "*" * 150

  contacts = database.execute("SELECT * FROM contact_list WHERE birthday = ?", [birthdate])

  puts "-" * 150
  print " ".ljust(10), "Name".ljust(25), "Birthday".ljust(20), "Phone Number".ljust(20), "Email".ljust(45), "Date Added\n"
  puts "-" * 150

  contacts.each do |contact|
    print (contact['id'].to_s+".").ljust(10), (contact['first_name']+" "+contact['last_name']).ljust(25), contact['birthday'].to_s.ljust(20), contact['phone_number'].to_s.ljust(20), contact['email'].ljust(45), contact['date_added'], "\n"
  end

  puts "-" * 150

  puts "\n\nPRESS ENTER TO CONTINUE..."
  input = gets.chomp

  if input
    search_database(database)
  end
end


def search_by_phone_number(database)
  puts "\nEnter Phone Number:"
  phone_number = gets.chomp

  puts "\e[H\e[2J"
  puts "*" * 150
  puts "RESULTS FOR Phone Number \"#{phone_number}\"".center(150)
  puts "*" * 150

  contacts = database.execute("SELECT * FROM contact_list WHERE phone_number = ?", [phone_number])

  puts "-" * 150
  print " ".ljust(10), "Name".ljust(25), "Birthday".ljust(20), "Phone Number".ljust(20), "Email".ljust(45), "Date Added\n"
  puts "-" * 150

  contacts.each do |contact|
    print (contact['id'].to_s+".").ljust(10), (contact['first_name']+" "+contact['last_name']).ljust(25), contact['birthday'].to_s.ljust(20), contact['phone_number'].to_s.ljust(20), contact['email'].ljust(45), contact['date_added'], "\n"
  end

  puts "-" * 150

  puts "\n\nPRESS ENTER TO CONTINUE..."
  input = gets.chomp

  if input
    search_database(database)
  end
end


def search_by_email(database)
  puts "\nEnter Email:"
  phone_number = gets.chomp

  puts "\e[H\e[2J"
  puts "*" * 150
  puts "RESULTS FOR Email \"#{email}\"".center(150)
  puts "*" * 150

  contacts = database.execute("SELECT * FROM contact_list WHERE email = ?", [email])

  puts "-" * 150
  print " ".ljust(10), "Name".ljust(25), "Birthday".ljust(20), "Phone Number".ljust(20), "Email".ljust(45), "Date Added\n"
  puts "-" * 150

  contacts.each do |contact|
    print (contact['id'].to_s+".").ljust(10), (contact['first_name']+" "+contact['last_name']).ljust(25), contact['birthday'].to_s.ljust(20), contact['phone_number'].to_s.ljust(20), contact['email'].ljust(45), contact['date_added'], "\n"
  end

  puts "-" * 150

  puts "\n\nPRESS ENTER TO CONTINUE..."
  input = gets.chomp

  if input
    search_database(database)
  end
end


def generate_fake_data(database)
  count = rand(1..100)
  date_added = Time.now.strftime("%m/%d/%Y")

  count.times do
    random_date = Time.at(Random.rand((Time.now - (60*60*24*365*100)).to_f..Time.now.to_f)).strftime('%m/%d/%Y')
    database.execute("INSERT INTO contact_list (first_name, last_name, birthday, phone_number, email, date_added) VALUES (?, ?, ?, ?, ?, ?)", [Faker::Name.first_name, Faker::Name.last_name, random_date, Faker::PhoneNumber.cell_phone, Faker::Internet.email, date_added])
  end

  puts "\n\n#{count} ADDITIONAL FAKE RECORDS CREATED SUCCESSFULLY. PRESS ENTER TO CONTINUE..."
  input = gets.chomp

  if input
    print_welcome_message(database)
  end
end
