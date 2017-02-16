#
# encrypt
#
# def encrypt(str)
# 
# result_str=""
# loop thru each character using index
# if str[i] is !space
#   use str[i].next to move one letter forward
#   result_str+=str[i].next
#
def encrypt(str)
  result_str=""
  for i in 0 .. (str.length-1)
    if str[i]!=" "
      result_str+=str[i].next[0]
    else
      result_str+=" "
    end
  end
  return result_str
end

p encrypt("abc")
p encrypt("zed")
# decrypt
#
# def decrypt(str)
#
# alphabet_str="abcdefghijklmnopqrstuvwxyz"
# 
# result_str=""
# loop thru each character using index
#  if str[i] is !space
#   use alphabet_str.index("str[i]")
#   use that alphabet_str[result-1] to move char back
#   result_str+=alphabet_str[result-1]
#
def decrypt(str)
  alphabet_str="abcdefghijklmnopqrstuvwxyz"
  result_str=""
  for i in 0 .. (str.length-1)
    if str[i]!=" "
      result=alphabet_str.index(str[i])
      result_str+=alphabet_str[result-1]
    else
      result_str+=" "
    end
  end
  return result_str
end

p decrypt("bcd")
p decrypt("afe")
#
# nested methods work because results and arguments are all strings
#
p decrypt(encrypt("sword fish"))