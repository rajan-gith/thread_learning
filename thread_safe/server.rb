
require "socket"
dts = TCPServer.new('localhost', 8008)
threads = []
jobs = Queue.new
pool_size = 10
loop do

	if threads.length < pool_size
		threads << Thread.new
  end

	while (dts.accept) do |conn|
		jobs << conn
		puts jobs.pop
	end
end
