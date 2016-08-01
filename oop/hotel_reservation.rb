# In this exercise, we've already implemented the class, and you have to write the
# driver code.
# This class represents a hotel reservation.

class HotelReservation
  attr_accessor :customer_name, :date, :room_number, :amenities

  def initialize(reservation_info)
    @customer_name = reservation_info[:customer_name]
    @date = reservation_info[:date]
    @room_number = reservation_info[:room_number]
    @amenities = []
  end

  def add_a_fridge
    @amenities << "fridge"
  end

  def add_a_crib
    @amenities << "crib"
  end

  def add_a_custom_amenity(amenity)
    @amenities << amenity
  end
end

# Write your own driver code below! Make sure your code tests the following:
# The ability to change a room number even after a reservation has already been created
# The add_a_fridge method
# The add_a_crib method
# The add_a_custom_amenity method
# ------------------------Driver Code------------------------------------------
puts "TESTING ability to change room number after reservation has been made..."
puts

hotel_reservation = HotelReservation.new(customer_name: "Harry Potter", date: "July 31, 2016", room_number: "314")
hotel_reservation.room_number = "316"

result = hotel_reservation.room_number

puts "room_number method returned:"
puts result
puts

if result == "316"
  puts "PASS!"
else
  puts "F"
end

#puts "-------------------------"

puts "TESTING ability to add a fridge..."
puts

hotel_reservation.add_a_fridge

result = hotel_reservation.amenities

puts "add_a_fridge method returned:"
puts result
puts

if result.include?'fridge'
  puts "PASS!"
else
  puts "F"
end

#puts "-------------------------"

puts "TESTING ability to add a crib..."
puts

hotel_reservation.add_a_crib

result = hotel_reservation.amenities

puts "add_a_crib method returned:"
puts result
puts

if result.include? "crib"
  puts "PASS!"
else
  puts "F"
end

#puts "-------------------------"

puts "TESTING ability to add a custom_amenity..."
puts

hotel_reservation.add_a_custom_amenity("bathtub")

result = hotel_reservation.amenities

puts "add_a_custom_amenity method returned:"
puts result
puts

if result.include? "bathtub"
  puts "PASS!"
else
  puts "F"
end
