running = 1
def unique (array_values)
    duplicate_values = []
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
unique = [1,2,2,3,4,5,6,6,7,7,8,9]

puts unique.uniq.inspect