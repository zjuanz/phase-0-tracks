#
# nested data structure exercise
#
homestead = {
  pretty_name: "Zalles/Bourianoff Homestead",
  house: {
    pretty_name: 'House',
    to_dos: [
      { owner: 'painters',task: "paint house" }
    ],
    kitchen: {
      pretty_name: "kitchen",
      to_dos: [
        {owner: 'dad',task: "put up dirty dishes"},
        {owner: 'dad',task: "put up clean dishes"}
      ]

    },
    master_bedroom: {

    },
    guest_bedroom:{

    },
    garage: {

    },
  },
  yard: {
    pretty_name: 'yard',
    to_dos: [
      { owner: 'lawn care folks', task: "mow yard"},
      { owner: 'lawn care folks', task: "edge"},
      { owner: 'dad',task: "trim trees and bushes"}
    ]
  },
  pool: {
    pretty_name: 'pool',
    to_dos: [
      { owner: 'dad', task: "brush"},
      { owner: 'dad', task: "empty leaves"},
      { owner: 'dad', task: "chemicals"}
    ]
  },
  cars: {
    dads_car:{
      pretty_name: "Dad's Honda Pilot",
      to_dos: [
      ]
    },
    moms_car: {
      pretty_name: "Mom's Honda Odessy",
      to_dos: [
      ]
    },
    zacs_car:{
      pretty_name: "Zac's Ford Expedition",
      to_dos: [
      ]
    }
  }
}
# p homestead
def print_todo (td)
#  p "td==>",td
  print "\tTodo: ",td[:owner],"==>",td[:task],"\n"
end
def print_todos (tds)
#  p "tds==>",tds
  if tds!=nil 
    then tds.each {|td| print_todo(td)}
  end
end
def print_container (c)
#  p "c==>",c
  if c[:to_dos] != nil
  then 
    print c[:pretty_name]," has the following todos:\n"
    print_todos c[:to_dos]
  else print c[:pretty_name]," has no todos\n"
  end
end
print_todos(homestead[:to_dos])
print_container(homestead)
print_container(homestead[:house])
print_container(homestead[:house][:kitchen])