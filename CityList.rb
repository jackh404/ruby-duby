class City
	attr_reader :name, :population, :latitude, :longitude
	
	def initialize(name)
		@name = name
	end
end

class CityList
	def initialize
		@cities = Array.new
	end

	def add_city(c)
    @cities.push(c)
	end

	def get_cities
		return @cities
	end

	def get_total_population
		total_population = 0
   		@cities.each { |c| total_population += c.population }
   		return total_population
	end	
end

class Map
	def initialize(name, h, w, cities)
		@map_name = name
		@height = h
		@width = w
		@cities = cities
	end

	def display_map
		puts "Drawing " + @map_name + " with dimensions " + @height.to_s + " x " + @width.to_s
    @cities.get_cities.each { |c| print c.name + " --> "}
	end
end

# require './city'
# require './city_list'
# require './map'

c1 = City.new("Raleigh")
c2 = City.new("Durham")

ct = CityList.new

ct.add_city(c1)
ct.add_city(c2)

map = Map.new("Triangle Map", 10, 10, ct)
map.display_map
