require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cult = Cult.new("Farts", "NYC", 2019, "dieee")
cult2 = Cult.new("philly farters", "Philadelphia", 2018, "a fart in a windstorm")

if Cult.find_by_name("Farts").location == "NYC"
  puts '`Cult.find_by_name("Farts")` is good.'
else
  puts '`Cult.find_by_name("Farts")` is bad.'
end

if Cult.find_by_location("NYC").name == "Farts"
  puts '`Cult.find_by_location("NYC")` is good.'
else
  puts '`Cult.find_by_location("NYC")` is bad.'
end

if Cult.find_by_founding_year(2019).location == "NYC"
  puts '`Cult.find_by_founding_year(2019)` is good.'
else
  puts '`Cult.find_by_founding_year(2019)` is bad.'
end

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
