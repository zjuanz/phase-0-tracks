
#
# rudimentary todo handler using sqlite3 database
#
require "sqlite3"
require "date"

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
  if (name=="status")||(name=="owners") then
    rows = db.execute("SELECT * FROM #{name}")
  elsif (name=="tables")
    rows = db.execute("SELECT * FROM sqlite_master")
  else
    rows = db.execute("SELECT * FROM #{name},owners,status WHERE home.owner_id=owners.id AND home.status_id=status.id")
  end

  # loop through each row
  rows.each do |row| 
   # p row
    case name
    when "status"
      puts row["id"].to_s+":"+row["status"]
    when "owners"
      puts row["id"].to_s+":"+row["name"]
    when "tables"
      puts row["type"]+":"+row["name"]
    else
      puts row[0].to_s+":"+row["task"]+"==>"+row["name"]
      #
      # convert julian date to mm/dd/yy
      #
      due_date_str=Date.jd(row["due_date"]).strftime('%m/%d/%y')
      puts "\tdue:"+due_date_str+"("+row["priority"].to_s+"/"+row["status"]+")"
    end
  end
  # => print contents

end

def load_status(db)

  status = db.execute("SELECT * FROM 'status'")
  
end

def drop_todo_table(db,name)
  list(db,"tables")
  db.execute("DROP TABLE #{name}")
  list(db,"tables")
end

def delete_todo(db,name,task_id)
  db.execute("DELETE FROM #{name} WHERE id=#{task_id}")
end

def update_todo(db,name,task_id,column_name,value)
  db.execute("UPDATE #{name} set #{column_name} = #{value} where id=#{task_id}")
end

def add_owner(db)
    puts "Enter name for new owner:"
    owner_name=gets.chomp
    db.execute("INSERT INTO owners (name) VALUES(?)",[owner_name])
    puts "Enter id for owner:"
    list(db,"owners")
    owner_id=gets.chomp.to_i
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
  when "drop"
    puts "enter table name:"
    name=gets.chomp

    drop_todo_table(db,name)

  when "delete"
    list(db,name)
    puts "Enter task ID to delete:"
    task_id=gets.chomp.to_i
    if task_id>0 then
      delete_todo(db,name,task_id)
    end
    list(db,name)
    
  when "add"
    puts "Enter todo description:"
    desc=gets.chomp
    puts "Enter priority (1-10):"
    priority=gets.chomp.to_i
    #
    # need to fix problem with how DATE is handled
    #
    puts "Enter due date(MM/DD/YY without zero padding):"
    due_date_str=gets.chomp
    #
    # convert due date to julian
    #
    due_date=Date.strptime(due_date_str,"%m/%d/%y").jd

    if status.length==0 then
      status=load_status(db)
      status.each do |x|
   #     p x["status"]
        if x["status"]=="open" then
          status_id=x["id"]
        end
      end
    end
    #p status_id
    
    puts "Enter id for owner:"
    list(db,"owners")
    owner_id=gets.chomp.to_i
    if owner_id == 0 then
      owner_id=add_owner(db)
    end  

    add_todo(db,name,owner_id,desc,due_date,priority,status_id)

  when "update"
    list(db,name)
    puts "enter ID for task to update"
    task_id=gets.chomp.to_i
    if task_id > 0 then
      
      column_name="foo"
      while column_name != ""
        puts "Enter column name to update:"
        column_name=gets.chomp
        break if column_name==""
        case column_name
          when "due_date"
            puts "Enter value for updated due date:"
            value=gets.chomp
          #
          # convert due date to julian
          #
            value=Date.strptime(value,"%m/%d/%y")
         # p value
         # p value.jd
            value=value.jd
          when "status"
            list(db,"status")
            puts "Enter value for updated status id"
            value=gets.chomp
            column_name="status_id"
          when "owner"
            list(db,"owners")
            puts "Enter value for updated owner id"
            value=gets.chomp
            if value=="0" then
              value=add_owner(db)
            end
            column_name="owner_id"
          else
            puts "Enter value for updated column:"
            value=gets.chomp
        end
        update_todo(db,name,task_id,column_name,value)
      end
    end


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
  # => delete: remove a task
  # => update: update an existing task
end
