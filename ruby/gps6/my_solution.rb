#Virus Predictor

# I worked on this challenge [by myself, with: Peter Thompson].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# The require relative statement references other ruby documents which allows the program to pull information from those other documents.
# The difference between require relative and require is that require relative is used to reference files within the local directory while require must get the exact path for a proper file reference
require_relative 'state_data'


class VirusPredictor

#Initializes the state instances and creates readable variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

#Calls predicted deaths method and speed of spread method and uses the instance variables as the arguments
#Predicted deaths and speed of spread methods are allowed to be accessible outside of the private scope  
  def virus_effects
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private

#Predicts the deaths of the virus based on population density, and then prints the results.
  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

#Predicts the speed of spread of the virus based on the population density and prints the speed.
  def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state




STATE_DATA.each do |state_name, pop_info| 
p VirusPredictor.new(state_name, pop_info[:population_density], pop_info[:population]).virus_effects
end



#=======================================================================
# Reflection Section
