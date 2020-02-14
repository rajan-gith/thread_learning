require 'benchmark'
array = []

puts Benchmark.measure{
	2.times.map do
		Thread.new do
		  1000.times do
		    array << array.size
		  end
		end
	end
}
