# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # [fill in any steps here]
  # split input string into an array
  # iterate over array and used it to set default quantity(1) as value in grocery list hash
  # print the list to the console [can you use one of your other methods here?]
  # make sure the implicit return is the hash
# output: hash grocery list item=>quantity
def create_list(items_str)
  items_array=items_str.split(" ")
  items_array.each do |it|
    items_hash[it]=1
  end
  print_list(items_hash)
end


# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
  # check to make sure input array as at only 2 or 3 elements
  #  p[0] : list
  #  p[1] : item string
  #  p[2] : optional quantity
  # IF 2 elements
  #   add item name=>1 to list
  # ELSE
  #   add item name=>optional quantity to list
  # END
# output: list
def add_item_to_list(*p)
  if p.length==2 then
    p[0][p[1]]=1
  elsif p.length==3 then
    p[0][p[1]]=p[2]
  end
  print_list(p[0])
end


# Method to remove an item from the list
# input: list, item name
# steps:
  # delete item name from list
# output: list 
def remove_item_from_list(list,item)
  list.delete(item)
  print_list(list)
end
# Method to update the quantity of an item
# input: list , item name, quantity
# steps:
  # overwrite existing quantity with item name->quantity in list
# output: list
def update_quatity_of_item(list,item,quantity)
  add_item_to_list(list,item,quatity)
  print_list(list)
end

# Method to print a list and make it look pretty
# input: list
# steps:
  # iterate through hash elements
    # print key as grocery item and value as quantity
# output: list
def print_list(list)
  list.each do |item,quantity|
    puts "Item:#{item} quantity:#{quantity}"
  end
  list
end