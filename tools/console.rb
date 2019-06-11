require_relative '../config/environment.rb'
require 'colorize'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cult = Cult.new("Farts", "NYC", 2019, "dieee")
cult2 = Cult.new("philly farters", "Philadelphia", 2018, "a fart in a windstorm")

if Cult.find_by_name("Farts").location == "NYC"
  puts '`Cult.find_by_name("Farts")` is good.'.green
else
  puts '`Cult.find_by_name("Farts")` is bad.'.red
end

if Cult.find_by_location("NYC").name == "Farts"
  puts '`Cult.find_by_location("NYC")` is good.'.green
else
  puts '`Cult.find_by_location("NYC")` is bad.'.red
end

if Cult.find_by_founding_year(2019).location == "NYC"
  puts '`Cult.find_by_founding_year(2019)` is good.'.green
else
  puts '`Cult.find_by_founding_year(2019)` is bad.'.red
end

follower1 = Follower.new("Alex", 24, "No.")
follower2 = Follower.new("Arslan", 27, "Death is the sweetest release.")
follower3 = Follower.new("Annie", 24, "Death is the sweetest release.")

if Follower.all.length == 3
  puts "`Follower.all` is good.".green
else
  puts "`Follower.all` is bad.".red
end

if Follower.all.find {|follower| follower.name == "Alex"} != nil
  puts '`Follower.new("Alex", 24, "No.")` is good.'.green
else
  puts '`Follower.new("Alex", 24, "No.")` is bad.'.red
end

if Follower.of_a_certain_age(24).length == 2
  puts '`Follower.of_a_certain_age(24)` is good.'.green
else
  puts '`Follower.of_a_certain_age(24)` is bad.'.red
end

if Follower.of_a_certain_age(27).length == 1
  puts '`Follower.of_a_certain_age(27)` is good.'.green
else
  puts '`Follower.of_a_certain_age(27)` is bad.'.red
end

follower1.join_cult(cult)
follower2.join_cult(cult)
follower3.join_cult(cult)
follower1.join_cult(cult2)

if follower1.cults.length != 2
  puts "`follower1.cults.length` is bad.".red
else
  puts "`follower1.cults.length` is good.".green
end



binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
