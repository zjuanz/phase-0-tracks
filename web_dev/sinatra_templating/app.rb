# require gems
require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

get '/students/delete' do
  @students = db.execute("SELECT id,* FROM students")
  erb :delete_student
end


get '/campus/:campus_request' do
  @campus = params[:campus_request]
  @students = db.execute("SELECT * FROM students WHERE campus=?",[params[:campus_request]])
  if @students.length >= 0 then
    erb :campus
  else
    "Sorry #{@campus} is not a valid campus!"
  end
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# remove student via a form

post '/remove_student' do
  db.execute("DELETE FROM students WHERE id=?",[params['id']])
  redirect '/students/delete'
end


# add static resources