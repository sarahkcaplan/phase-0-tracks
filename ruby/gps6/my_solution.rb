# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Improting the contents of state_data.rb in this file.
# Require_relative assumes the file is within the same directory.
require_relative 'state_data'

class VirusPredictor

# Intitialized an instance of the class and sets instance variables

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# A method calling two private methods
  def virus_effects
    predicted_deaths()
    speed_of_spread()
  end

  private

# Preforms calculation based on population density to predict the number of deaths and prints the result
  def predicted_deaths()
    # predicted deaths is solely based on population density
    if @population_density >= 200
      factor = 0.4
    elsif @population_density >= 150
      factor = 0.3
    elsif @population_density >= 100
      factor = 0.2
    elsif @population_density >= 50
      factor = 0.1
    else
      factor = 0.05
    end
    number_of_deaths = (@population * factor).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

# Calculates speed of spread based on population density and prints the results
  def speed_of_spread() #in months
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

STATE_DATA.each do |state_name, population_data|
  us_state = VirusPredictor.new(state_name, population_data[:population_density], population_data[:population])
  us_state.virus_effects
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


# #=======================================================================
# # Reflection Section

# # What are the differences between the two different hash syntaxes shown in the state_data file?
# --One was a hash rocket and the other used symbol colon value

# # What does require_relative do? How is it different from require?
# -- Both are used for improting the contents of state_data.rb in this file.Require_relative assumes the file is within the same directory. Relative looks outside the working directory.

# # What are some ways to iterate through a hash?
# --Using #each
# --A while loop

# # When refactoring virus_effects, what stood out to you about the variables, if anything?
# --All of the variables were instance variables therefore none need to be passed into the instance method virus_effects


# What concept did you most solidify in this challenge?
# --Using instance variables