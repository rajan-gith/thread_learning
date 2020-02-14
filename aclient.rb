require 'socket'  
streamSock = TCPSocket.new( "localhost", 8008 )  
10.times do |i|
	streamSock.puts( "Hello #{i}" )
	sleep(2)
end
streamSock.close

# str = streamSock.recv( 100 )  
# print str  
# streamSock.close 