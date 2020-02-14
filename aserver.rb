require "socket"  
dts = TCPServer.new('localhost', 8008)  
loop do  
  # Thread.start(dts.accept) do |s|  
  #   print(s, " is accepted\n")  
  #   s.write(Time.now)
  #   s.puts("sent from server")
		# while line = s.gets
		#   puts line # Prints whatever the client enters on the server's output
		# end
  #   print(s, " is gone\n")  
  #   s.close  
  # end
  # s = dts.accept
  Thread.start(dts.accept) do |s|
	  puts "connected"
	  print(s)
	  while line = s.gets
	  	 puts line
	  end
	  s.close
	  puts "closed"
	end

end  
