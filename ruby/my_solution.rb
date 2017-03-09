# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# 
#   imbed ruby code from another file
#
require_relative 'state_data'

class VirusPredictor

#
# initialize class with following attributes:
# => state
# => population
# => population_density
#
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

#
# virus effects
#   two lines of output
#      predicted deaths
#      speed of spread
# private
#
  def virus_effects

    #
    # reduce to one method 
    #
    # and don't need to pass arguments
    #

 #   predicted_deaths(@population_density, @population, @state)
    predicted_deaths
 #   speed_of_spread(@population_density, @state)
    speed_of_spread
  end

  private

#
# predicted_deaths
#   calculates number of deaths by density
# 
# no return. only prints output
#
#  def predicted_deaths(population_density, population, state)
  def predicted_deaths()
    # predicted deaths is solely based on population density
    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor
    # end

    if @population_density >= 200
      mult=0.4
    elsif @population_density >= 150
      mult=0.3
    elsif @population_density >= 100
      mult=0.2
    elsif @population_density >= 50
      mult=0.1
    else
      mult=0.05
    end

    number_of_deaths = (@population * mult).floor 
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

#
# speed of spread
#
#    calculates how fast it will spread
#     and outputs
#  def speed_of_spread(population_density, state) #in months
  def speed_of_spread()
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    #speed = 0.0

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


#alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
#alabama.virus_effects
#
#jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
#jersey.virus_effects
#
# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects



# iterate through STATE_DATA constant


   STATE_DATA.each {|state,population_data| 
       this_state = VirusPredictor.new(state,population_data[:population_density],population_data[:population])
       this_state.virus_effects

     }
   






#=======================================================================
# Reflection Section