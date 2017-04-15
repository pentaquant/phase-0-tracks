# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
#define the method that creates a list and accepts a string of items as an input
def create_list(list_in)
# define hash for the list items to go into
  grocery_list = {}
# split items to create keys and create a new array
  item_arr = list_in.split(" ")
# use iteration to set default items to 0
  item_arr.each do |items|
    grocery_list[items] = 0
  end
# print the list to the console [can you use one of your other methods here?  
  print_list(grocery_list)
end
# output: [hash]

# PRINT Method to print a list and make it look pretty // Moved from the back for ease of debugging
def print_list(input_list)
# input: list_input
# Place separator above block code use iteration to print each key and value from the hash
puts "+=+=+=+=+=+="
  input_list.each do |items, number|
    puts "#{items} :: #{number}"
  end
end
# output: updated hash

# ADD Method to add an item to a list
def add_item(list_in, item_name, item_quant = 0)
# input: list, item, and quantity
# define the way the inputs will be fed into the hash
  list_in[item_name] = item_quant
# use print method to output updated hash
  print_list(list_in)
end
# output: updated hash

# DELETE Method to remove an item from the list
def delete(list_in, item_name)
# input: list, item
  list_in.delete(item_name)
# steps: use delete array method that takes an item name as an argument
# use print method to output updated hash
  print_list(list_in)
end
# output:

# UPDATE QUANTITY Method to update the quantity of an item
# input: list, item, quantity
def up_quant(list_in, item_name, item_quant)
# steps: Similar to add method but with the absence of the default quantity value of 0
  list_in[item_name] = item_quant
# use print method to output updated hash
  print_list(list_in)
# output:
end

list_1 = create_list("carrots apples cereal pizza")


