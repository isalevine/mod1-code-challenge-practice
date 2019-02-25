require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Test Code Goes Here


# create three Musical instances
urinetown = Musical.new("Urinetown (Cincy Edition)", "Cincinnati")
lesmis = Musical.new("Les Miserables (Cincy Edition)", "Cincinnati")
spamalot = Musical.new("Spamalot", "Camelot")

puts
puts "Musical.all_introductions outputs:"
puts "(start)"
Musical.all_introductions
puts "(end)"
puts




# create three Theater instances
intiman = Theater.new("Intiman Theater", "Seattle")
aronoff = Theater.new("Aronoff Center", "Cincinnati")
bogarts = Theater.new("Bogarts", "Cincinnati")

puts
puts "Theater.all outputs:"
puts "(start)"
puts Theater.all
puts "(end)"
puts



# test performance_instance.hometown_setting?
performance_cincinnati = Performance.new("Jan 14 1991", urinetown, aronoff)
performance_seattle = Performance.new("Feb 28 2007", urinetown, intiman)

puts
puts "performance_cincinnati.hometown_setting? should return true:"
puts performance_cincinnati.hometown_setting?
puts
puts "performance_seattle.hometown_setting? should return false:"
puts performance_seattle.hometown_setting?
puts




# test urinetown.perform_in_theater("Mar 5 2019", bogarts)
urinetown.perform_in_theater(bogarts, "Mar 5 2019")

puts
puts "check Performance.all to see if Urinetown at Bogarts in 2019 added:"
puts "(start)"
Performance.all_strings
puts "(end)"
puts



# test Musical#performances => does urinetown.performances return an array of Performance instances?
puts
puts "urinetown.performances outputs:"
puts "(start)"
puts urinetown.performances.to_s
puts "(end)"
puts



# test Musical#theaters => does urinetown.theaters return an array of Performance instances?
puts
puts "urinetown.theaters outputs:"
puts "(start)"
puts urinetown.theaters.to_s
puts "(end)"
puts




# test Theater#performances => does aronoff.theaters return an array of Performance instances?
puts
puts "aronoff.performances outputs:"
puts "(start)"
puts aronoff.performances.to_s
puts "(end)"
puts





# test Theater#musicals => does aronoff.musicals return an array of Performance instances?
puts
puts "aronoff.musicals outputs:"
puts "(start)"
puts aronoff.musicals.to_s
puts "(end)"
puts



Pry.start
