# require gems
require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true
db.trace {|sql| p sql}

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

#
# Release 0 Routes
#
# /contact
#
get '/contact' do
  'For more information contact <a href="mailto:info@randomemail.com"> info </a>'
end

#
# great job
#
get '/great_job' do
  #response=params.to_s+'<br>'
  response='<br>'
  name = params[:name]
  if name then
    response+="<br>Good job, #{name}!!!"
  else
    response+="<br>Good job dude!!!"
  end
      
end

#
# use route parameters to add two numbers
#
get '/:num1/plus/:num2' do
  response=params.to_s+'<br>'
  response='<br>'
  result=params[:num1].to_i+params[:num2].to_i
  response+=params[:num1]+"+"+params[:num2]+"="+result.to_s
  
end

#
# bonus
# 
get '/students/order/:order' do
  response=params.to_s+"<br>"+params[:order]+"<br>"
  #
  # the following query didn't work because the column name gets put in with single quotes
  # => for whatever reason that format fails sort by the requested column

  #students=db.execute("SELECT * FROM students ORDER BY ?",params[:order])
  students=db.execute("SELECT * FROM students ORDER BY #{params[:order]}")
  students.each do |student|
    response+=student.to_s+"<br>"
  end
  response
end