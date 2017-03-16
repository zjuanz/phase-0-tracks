#
# rudimentary todo handler using sqlite3 database
#

# 
# create_todo_table method
#
def create_todo_table(name)
  #
  # build sql string with name
  # call sql command to create
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
