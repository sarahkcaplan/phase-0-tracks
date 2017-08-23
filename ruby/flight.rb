module Flight
  def take_off(altitude)
    puts "Taking off and asscending until reaching #{altitude}...."
  end
end

Class Bird
  include Flight
end

Class Plane
  include Flight
end

