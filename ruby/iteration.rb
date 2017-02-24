def say_hello
  puts "why hello there"
  yield("a","b")
end

say_hello { |x, y| puts "great to see you #{x} #{y}" }



my_array=[
  "Seattle",
  "Boston",
  "Boise",
  "Tucson"
]

my_hash = {
   "Seattle"=>"Washington",
  "Boston"=>"Massachusets",
  "Boise"=>"Idaho",
  "Tucson"=>"Arizona"

}

p my_array
p my_hash

my_array.each {|x| puts "I have traveled to #{x}"}

my_hash.each {|x,y| 
#  p x
#  p y
  puts "The state that goes with #{x} is #{y}"
}

my_array.map! do |city|
  puts city
  city.next
end
p my_array

my_array.delete_if{|x| x=="Boisf"}
p my_array 
my_array.keep_if{|x| x=="Tucsoo"}
p my_array


# step 3


my_array=[
  "Seattle",
  "Boston",
  "Boise",
  "Tucson"
]


my_array.select! {|city| city.length<=5}
p "Step 3"
p my_array
p "Step 4"
# step 4
new_hash=my_hash.drop_while{|x,y| 
p x
p y
  y!="Idaho"}
p "my_hash==>",my_hash,"\n"
p "new_hash==>",new_hash,"\n"
