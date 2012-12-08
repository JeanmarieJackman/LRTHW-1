## Animal is-a object look at the extra credit
class Animal
	end

## Dog is-a animal
class Dog < Animal

	def initialize(name)
		## Dog has-a name.
		@name = name
	end
end

## Cat is-a animal
class Cat < Animal

	def initialize(name)
		## Cat has-a name.
		@name = name
	end
end

## Person is a class
class Person

	def initialize(name)
		## Person has-a name
		@name = name

		## Person has-a pet of some kind
		@pet = nil
	end

	attr_accessor :pet
end

## Employee is-a person.
class Employee < Person

	def initialize(name, salary)
		## Employee has-a name and salary.
		super(name)
		## ??
		@salary = salary
	end
end

## Fish is-a class
class Fish
end

## Salmon is-a fish.
class Salmon < Fish
end

## Halibut is-a fish
class Halibut < Fish
end

## rover is-a Dog
rover = Dog.new ("Rover")

## rover is-a Cat.
satan = Cat.new("Satan")

## Mary is-a Person.
mary = Person.new("Mary")

## Mary has-a pet Satan
mary.pet = satan

## Frank is-a Employee.
frank = Employee.new("Frank", 120000)

## Frank has-a pet rover.
frank.pet = rover

## flipper is-a fish.
flipper = Fish.new()

## crouse is-a salmon.
crouse = Salmon.new()

## harry is-a halibut
harry = Halibut.new()