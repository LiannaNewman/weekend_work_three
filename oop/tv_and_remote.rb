# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class.

# The Tv class will have the attributes: power, volume, and channel.

# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.
# The Remote will have the following instance methods:
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
# increment_volume (this will increase the tv's volume by 1)
# decrement_volume (this will decrease the tv's volume by 1)
# set_channel (this will change the tv's channel to whatever integer is passed to this method)

class Tv
  attr_accessor :power, :volume, :channel

  def initialize
    @power = "OFF"
    @volume = 0
    @channel = 0
  end
end

class Remote
  def initialize(tv)
    @tv = tv
  end

  def toggle_power
    if @tv.power == "ON"
      @tv.power = "OFF"
    elsif @tv.power == "OFF"
      @tv.power = "ON"
    end
  end

  def increment_volume
    @tv.volume += 1
  end

  def decrement_volume
    @tv.volume -= 1
  end

  def set_channel(channel)
    @tv.channel = channel
  end
end

#------Driver Code------------------

sony_tv = Tv.new
sony_remote = Remote.new(sony_tv)

puts "TESTING ability to power TV on and off..."
puts

puts "Currently your TV is:" + sony_tv.power

result = sony_remote.toggle_power

puts "power method returned:"
puts result
puts

if result == "ON"
  puts "PASS!"
else
  puts "F"
end

puts "-------------------------"

puts "TESTING ability to increase volume..."

puts "Currently your TV volume is:" + sony_tv.volume.to_s

18.times do
  sony_remote.increment_volume
end

result = sony_tv.volume

puts "increment_volume method returned:"
puts result
puts

if result == 18
  puts "PASS!"
else
  puts "F"
end

puts "-------------------------"

puts "TESTING ability to lower volume..."

puts "Currently your TV volume is:" + sony_tv.volume.to_s

10.times do
  sony_remote.decrement_volume
end

result = sony_tv.volume

puts "decrement_volume method returned:"
puts result
puts

if result == 8
  puts "PASS!"
else
  puts "F"
end

puts "-------------------------"

puts "TESTING ability to change channel..."

puts "Currently your TV channel is:" + sony_tv.channel.to_s

sony_remote.set_channel(188)

result = sony_tv.channel

puts "set_channel method returned:"
puts result
puts

if result == 188
  puts "PASS!"
else
  puts "F"
end
