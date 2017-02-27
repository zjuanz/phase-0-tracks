#
#  method to take a real name and creates a fake one
#
# - swap first and last name
# - change all vowels:a e i o u to next vowel in list.
#   NOTE: u->a 
# - change all consonants to next non vowel.
#
# 
def mk_alias (first_name,last_name)
  # return scrambled names swapped
  str=scramble(last_name)
  str<<" "
  str<<scramble(first_name)
end
def scramble(str)
  #
  # data structure for swapping vowels
  # Note: could also do a hash
  #
  vowels="aeiou"
  alt_vowels="eioua"
  # turn string into an array
  str_array=str.split('')
  #
  # iterate on array and change each char
  # Note: watch out for upper case and edge case
  #
  scrambled_str=""
  str_array.each { |chr| 
#    p chr.class
#    p chr
#    scrambled_str+=chr
#    p scrambled_str
#
# if upper case, remember and set to lower
#
    chr_is_upper=(chr.upcase==chr)
    if chr_is_upper then
      chr=chr.downcase
    end
  #    if char is a vowel
  #       replace with char with same index in alt_vowel
    vi=vowels.index(chr)
    if vi!=nil then 
      scrambled_str+=alt_vowels[vi]
 #     print scrambled_str,chr,vi,alt_vowels[vi],"\n"
    else
      vi=vowels.index(chr.next)
      while vi!=nil
        chr=chr.next
        vi=vowels.index(chr.next)
      end
      if !chr_is_upper then
        scrambled_str+=chr.next[0]
      else
        scrambled_str+=chr.next[0].upcase
      end

 #     print scrambled_str,chr,chr.next[0],"\n"
    end
  #    else
  #       while char.next is a vowel
  #         char=char.next
  #     
  }  
  # turn array back into string
  scrambled_str
end
#p mk_alias("Juan","Zalles")
#p mk_alias("Felicia","Torres")

#
# user interface
#
# ask for a name 
# return alias
# loop until "quit"
#
#

continue=nil
alias_hash={}
while continue!="q"
  puts "Enter first name:"
  first_name=gets.chomp
  puts "Enter last name:"
  last_name=gets.chomp
  new_alias = mk_alias(first_name,last_name)
  puts "\nAlias for #{first_name} #{last_name} is #{new_alias}\n\n" 

  alias_hash[first_name+" "+last_name]=new_alias

  puts "Enter to continue (q) to quit"
  continue=gets.chomp   
end 

# p alias_hash 
puts
puts
alias_hash.each { |x,y| puts "#{x} is also known as #{y}"}