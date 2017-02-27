#
# 
array= [42, 89,23, 1]

def search_array(arr, number)
  counter=0
  index=nil
  arr.each do |x|
    if x==number then
      index=counter
      break
      p "index",index
    end
    counter+=1
    p "counter",counter
  end
  index
  end
#p search_array(array, 1)
#p search_array(array, 24)
#p search_array(array, 89)

def fib(count)
#
# every element is the sum of the previous 2
#
#
# do loop for two less times than arg
#   element[n]=element[n-1]+element[n-2]
# for fib(1) return [0]
#     fib(2) return [0,1]
#

case count
when 1
  [0]
when 2
  [0,1]  
else
  array=[0,1]
  counter=2
  while counter<=count-1
    array[counter]=array[counter-1] + array[counter-2]
    counter+=1
#    p array,counter
  end
  array
end
end

p fib(6)

huge=fib(100)
p huge[-1]
p huge[-1]==218922995834555169026

array= [42, 89,23, 1]

# 
# inse

# builds sorted list on left
# by comparing next element
# if it is large you are done
# else step back thru array until 
# correct spot is found
# 

def insertion_sort (target_array)
  counter=1
  while counter<target_array.length
    if target_array[counter]>=target_array[counter-1]
      then
    else
#
# back up through array until you find right spot
#
      backwards=counter-1
      while target_array[backwards]>=target_array[counter]
        backwards-=1
        break if backwards==0
      end
      p backwards,target_array
      target_array.insert(backwards,target_array[counter])
      target_array.delete_at(counter+1)
    end
    counter+=1
  end
  target_array
end
p insertion_sort(array)