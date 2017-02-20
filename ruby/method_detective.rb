# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

# "iNvEsTiGaTiOn".<???>
p "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”
p "InVeStIgAtIoN"

# "zom".<???>
p "zom".sub(/o/,"oo")
p "zom".gsub(/o/,"oo")
# => “zoom”

# "enhance".<???>
p "enhance".center(15)
# => "    enhance    "
p "    enhance    ".length
p "    enhance    "

# "Stop! You’re under arrest!".<???>
p "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"
p "STOP! YOU’RE UNDER ARREST!"

# "the usual".<???>
#=> "the usual suspects"

# " suspects".<???>
p " suspects".prepend("the usual")
# => "the usual suspects"
p "the usual suspects"

# "The case of the disappearing last letter".<???>
p "The case of the disappearing last letter".slice(0..-2)
p "The case of the disappearing last letter"[0..-2]
# => "The case of the disappearing last lette"

# "The mystery of the missing first letter".<???>
p "The mystery of the missing first letter".slice(1..-1)
p "The mystery of the missing first letter"[1..-1]
# => "he mystery of the missing first letter"

# "Elementary,    my   dear        Watson!".<???>
p "Elementary,    my   dear        Watson!".squeeze(" ")
# => "Elementary, my dear Watson!"
p "Elementary, my dear Watson!"

# "z".<???>
p "z".ord
# => 122 
p 122 
# (What is the significance of the number 122 in relation to the character z?)

# "How many times does the letter 'a' appear in this string?".<???>
p "How many times does the letter 'a' appear in this string?".count("a")
# => 4
p 4