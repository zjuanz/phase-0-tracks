
#
# rudimentary todo handler using sqlite3 database
#
require "sqlite3"

# 
# create_todo_table method
#
def create_todo_table(name)
  # create SQLites3 db
  db = SQLite3::Database.new("todo.db")
  db.results_as_hash = true  # get row info in hash

  # build sql string with name
  create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS '#{name}' (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT
    )
  SQL
 # create_table_cmd.sub!("/[_]/",name)
  p create_table_cmd
  p name
  stm = db.prepare create_table_cmd
  p stm
 # stm.bind_param 1, name
 # p stm
  # call sql command to create
  p create_table_cmd
  p name
  #db.execute(create_table_cmd,[name])
  #db.execute(create_table_cmd)
  stm.execute
  # 
  # return db
end

#
# add todo method
#
def add_todo(db,owner,task,date,priority)
  #
  # build sql command with arguments
  # invoke sql command
  # call list method

end

#
# list method
#
def list(db)
  #
  # build sql command to return contents of table
  # invoke command
  # loop through each row
  # => print contents

end


#
# driver code
#

#
# loop prompting for actions
#

loop do

  #
  # ask user for action
  #
  puts "Enter action:"
  action=gets.chomp
  case action
  when "quit"
    puts "thanks!"
    break
  when "list"
    list(db)
  when "create"
    puts "enter table name:"
    name=gets.chomp

    db=create_todo_table(name)
  else
    puts "unknown action:#{action}"    
  end
  # ask for data based on action
  #
  # invoke appropriate method
  #
  # actions:
  # => quit: exit program
  # => create: prompt for table name 
  # =>         call create_todo_table method
  # => list: print current todo table with list method
  # => add: prompt for owner, task, date,priority
  # =>      call add_todo method 
end
