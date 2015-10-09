
# require time
puts "Hello World\n"

def sum(arr)

	return !arr.empty? ? arr.reduce(:+) : 0
end 

def max_2_sum(arr)

	return sum(arr.sort!.pop(2))
end

def sum_to_n?(arr, n=0)
	arr.combination(2).to_a.each{ |ar| return true if sum(ar) == n }
	return false

end

def binary_multiple_of_4(s)
	s.split("").each{|n| return false if n > "1"}
	# print s.to_i(2)
	return s.to_i(2)%4==0 ? true : false
end

def start_with_consonant?(s)
	
	return s=~/^[a e i o]/i ? true : false 
end

def hello(name)
	"Hello, #{name}"
	"Hello " << name
	"Hello " + name
end

# puts max_2_sum([100,2, 3, 4, 9, 0, 4])

puts sum_to_n?([1, 3, 4,5], 3)
# puts hello("Salem")
now = Time.now.sec
 puts binary_multiple_of_4("1100")
 sleep(1.9)
# puts start_with_consonant?("salem")
puts Time.now.sec - now 
