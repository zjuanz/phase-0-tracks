module Shout
  # we will add more later
#   def self.yell_angrily(words)
   def yell_angrily(words)
    words + "!!!" + " :("
  end
#  def self.yelling_happily(words)
  def yelling_happily(words)
    words + "!!!" + " :)"
  end
end

class Mom 
  include Shout
end

class Dad
  include Shout
end

m=Mom.new
puts m.yelling_happily("We made it into LASA")
d=Dad.new
puts d.yell_angrily("quit touching your brother")
#puts Shout.yell_angrily("DFKJDKJDSF")
#puts Shout.yelling_happily("FJKDLJDSF")