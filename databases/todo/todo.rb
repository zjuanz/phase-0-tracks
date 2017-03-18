
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

  create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS 'owners' (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255)
  );
  SQL
  stm = db.prepare create_table_cmd
  stm.execute

  create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS 'status' (
    id INTEGER PRIMARY KEY,
    status VARCHAR(255)
  );
  SQL
  stm = db.prepare create_table_cmd
  stm.execute

  # build sql string with name
  create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS '#{name}' (
    id INTEGER PRIMARY KEY,
    task VARCHAR(255),
    due_date DATE,
    priority INTEGER,
    owner_id INTEGER,
    status_id INTEGER,
    FOREIGN KEY (owner_id) REFERENCES owners(id),
    FOREIGN KEY (status_id) REFERENCES status(id)
    );
  SQL

  stm = db.prepare create_table_cmd
  # call sql command to create

  stm.execute
  # 
  # return db
  db
end

#
# add todo method
#
def add_todo(db,name,owner,task,date,priority,status)
  #
  # build sql command with arguments
  # invoke sql command
  db.execute("INSERT INTO #{name} (owner_id,task,due_date,priority,status_id) VALUES(?,?,?,?,?)",
    [owner,task,date,priority,status])
  # call list method
  list(db,name)

end

#
# list method
#
def list(db,name)
  #
  puts "#{name} has the following data:"
  # build sql command to return contents of table
  # invoke command
  tasks = db.execute("SELECT * FROM #{name}")
  # loop through each row
  tasks.each do |task| 
    p task
  end
  # => print contents

end

def load_status(db)

  status = db.execute("SELECT * FROM 'status'")
  
end

#
# driver code
#

#
# loop prompting for actions
#

db=nil
name=""
status=[]
status_id=0

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
    list(db,name)
  when "create"
    puts "enter table name:"
    name=gets.chomp

    db=create_todo_table(name)
    
  when "add"
    puts "Enter todo description:"
    desc=gets.chomp
    puts "Enter priority (1-10):"
    priority=gets.chomp.to_i
    puts "Enter due date:"
    due_date=gets.chomp

    if status.length==0 then
      status=load_status(db)
      status.each do |x|
        p x["status"]
        if x["status"]=="open" then
          status_id=x["id"]
        end
      end
    end
    p status_id
    
    puts "Enter id for owner:"
    list(db,"owners")
    owner_id=gets.chomp.to_i
    if owner_id == 0 then
      puts "Enter name for new owner:"
      owner_name=gets.chomp
      db.execute("INSERT INTO owners (name) VALUES(?)",[owner_name])
      puts "Enter id for owner:"
      list(db,"owners")
      owner_id=gets.chomp.to_i
    end  

    add_todo(db,name,owner_id,desc,due_date,priority,status_id)



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
