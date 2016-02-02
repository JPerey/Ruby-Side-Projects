# Code is to take in some numerical input the user gives, and checks
# with existing inputs if they are a duplicate of what the user put in. 
# If a duplicate, it will reject the value.

running = 1 # variable to run while loop for user input
def unique (array_values) # method to take in user input, and check them against future inputs,
    duplicate_values = [] # and finally output an array with no duplicate numbers
    new_array = []
    array_values.each do |array_val|
      if duplicate_values.include?(array_val)
           puts "#{array_val} is a duplicate"
       else
           new_array.push(array_val)
           puts "#{array_val} is not a duplicate"
       end
       duplicate_values.push(array_val)
    end
    return new_array
end
array1 = []
final_array = []

while running == 1
puts " what number you thinking?"
number = gets.chomp
array1.push(number.to_i)
puts " is there more?"
if gets.chomp == "yes"
    
else
   final_array =  unique(array1)
    running = 0
    puts " running is #{running}"
    puts final_array.inspect
end
end
unique = [1,2,2,3,4,5,6,6,7,7,8,9] # test of one of ruby's interesting techniques,
                                   # the .uniq command. This command removes any 
puts unique.uniq.inspect           # duplicates in a list automatically. 
