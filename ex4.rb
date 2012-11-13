# there are 100 cars
cars = 100
# there is space for 4 in each car.
space_in_a_car = 4.0
# there are thirty drivers
drivers = 30
# there are ninety passengers.
passengers = 90
# this determines how many undriven cars there are by subtracting the number of drivers from the number of cars.
cars_not_driven = cars - drivers
# there can only be as many driven cars as there are drivers.
cars_driven = drivers
# carpool capacity is determined by the number of cars driven by the amount of space in a car.
carpool_capacity = cars_driven * space_in_a_car
# the average number of passengers is determined by dividing the passengers by the number of cars driven.
average_passengers_per_car = passengers / cars_driven

puts "There are #{cars} cars available"
puts "There are only #{drivers} drivers available."
puts "There will be #{cars_not_driven} empty cars today."
puts "We can transport #{carpool_capacity} people today."
puts "We have #{passengers} passengers to carpool today."
puts "We need to put about #{average_passengers_per_car} in each car."

#extra credit - it's saying in line 9 that there was an error when he named "carpool_capacity"

#1. I suppose it is only necessary if you plan on accounting for space in terms of non whole numbers. For example, if people want to put something in their lap.
#2. It means that it is not an integer - it has a decimal place.
