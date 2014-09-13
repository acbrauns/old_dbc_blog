class Person 
	@@people = []

	def initialize(name)
		@name = name
		@cals_eaten = 0
		@@people << @name
	end

	def eat(food)
		food.eaten
		@cals_eaten += 
			food.instance_variable_get(:@cals_per_unit)
	end

	def self.people
		@@people
	end
end



class Food
	@@menu_items = []

	def initialize(name, cals_per_unit)
		@name = name
		@cals_per_unit = cals_per_unit
		@units_eaten = 0 
		@@menu_items << @name
	end


	def eaten
		@units_eaten += 1
	end


	def self.menu_items
		@@menu_items
	end

end


#CREATE NEW PERSON OBJECTS
ron = Person.new("Ron")
stewie = Person.new("Stewie")
cartman = Person.new("Cartman")

#CREATE NEW FOOD OBJECTS
friedchicken = Food.new("fried chicken", 250)
bacon = Food.new("bacon", 350)
pie = Food.new("cherry pie", 200)
coolhhwhip = Food.new("Cool Hhwhip", 90)

#CALL EAT METHOD ON VARIOUS PERSON OBJECTS
ron.eat(bacon)
ron.eat(bacon)
ron.eat(friedchicken)

stewie.eat(pie)
stewie.eat(coolhhwhip)

cartman.eat(friedchicken)
cartman.eat(friedchicken)
cartman.eat(bacon)
cartman.eat(pie)
cartman.eat(coolhhwhip)


#PRINT STATS ON PERSON OBJECTS AND FOOD OBJECTS
puts "Bacon strips eaten by all: #{bacon.instance_variable_get(:@units_eaten)}"
puts "Calories eaten by Ron: #{ron.instance_variable_get(:@cals_eaten)}"
puts "Calories eaten by Stewie: #{stewie.instance_variable_get(:@cals_eaten)}"
puts "Calories eaten by Cartman: #{cartman.instance_variable_get(:@cals_eaten)}"
puts "Current people at the table: #{Person.people}"
puts "Current items on the menu: #{Food.menu_items}"