# Suppose that we call travel_around_the_city on an instance of CityVehicle.
# What is the order that classes or modules will be checked in to find the travel_around_the_city method that should be called?

# 5
module Bike
  def travel_around_the_city
    puts 'It takes 5 hours'
  end
end

# 3
module Metro
  def travel_around_the_city
    puts 'It takes 2 hours'
  end
end

# 2
module Car
  def travel_around_the_city
    puts 'It takes 1 hour'
  end
end

# 4
class Vehicle
  include Bike
  def travel_around_the_city
    puts 'It should take some time'
  end
end

# 1
class CityVehicle < Vehicle
  include Metro
  include Car
end

city_vehicle = CityVehicle.new
city_vehicle.travel_around_the_city