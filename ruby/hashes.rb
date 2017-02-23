#
# client tracker for designer to enter details:
#  - name (String)
#  - age (Integer)
#  - children (Integer)
#  - decor theme (String)
#  - account current ? (Boolean)
# 
#
# loop while prompting for all info
# convert user input to appropriate type
#

clients=[]
client_index=0
done_with_data_input=true

while done_with_data_input

  client_info={}
  puts "Name:"
  client_info[:name]=gets.chomp

  puts "Age:"
  client_info[:age]=gets.chomp.to_i

  puts "Number of children:"
  client_info[:children]=gets.chomp.to_i

  puts "Decor theme:"
  client_info[:decor]=gets.chomp

  puts "Account current ?(y/n)"
  client_info[:current]=(gets.chomp=="y")

  puts "Hit enter for more clients, q to quit"
  q=gets.chomp

  clients[client_index]=client_info

  client_index+=1

#  p "info:", client_info
#  p "clients:", clients

  done_with_data_input=(q!="q")
end
# p "final clients:", clients
#
# print data for review
puts "\nPlease review your data:"
clients.each_index {
  |c| print "Client \# #{c}:\n"
  client_info=clients[c]
  # p client_info
  print "\t",client_info[:name],
    " is age #{client_info[:age]}",
    " with #{client_info[:children]} children",
    ", prefers #{client_info[:decor]}",
    " and ",client_info[:current] ? "is" : "is not",
    " current.",
    "\n"
}
# allow for data change
# 
# |
loop do
  puts "\nEnter client \# to modify (or Enter to quit):"
  target_client=gets
  break if target_client==nil
  client_info=clients[target_client.chomp.to_i]
#  p client_info
  puts "\nEnter field to modify for #{client_info[:name]}:"
  target_field=gets.chomp
 # p target_field

  print "Current data for #{target_field}:",
    client_info[target_field.to_sym], 
    "\nEnter new data:"

  target_data=gets.chomp
  case target_field
  when "name","decor"
    client_info[target_field.to_sym]=target_data
  when "age"
    client_info[target_field.to_sym]=target_data.to_i
  when "current"  
    client_info[target_field.to_sym]=(target_data=="y")
  else
    puts "Unknown field==>#{target_field}!!!"
  end  

#  p client_info
  clients[target_client.chomp.to_i]=client_info
#  p clients
end

#p clients

# print final results (next rev make this a method)
puts "\nFinal data:"
clients.each_index {
  |c| print "Client \# #{c}:\n"
  client_info=clients[c]
  # p client_info
  print "\t",client_info[:name],
    " is age #{client_info[:age]}",
    " with #{client_info[:children]} children",
    ", prefers #{client_info[:decor]}",
    " and ",client_info[:current] ? "is" : "is not",
    " current.",
    "\n"
}
puts "Have a nice day !!! :)"
