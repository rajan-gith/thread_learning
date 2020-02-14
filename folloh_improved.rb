require "socket"
dts = TCPServer.new('139.59.30.58', 8008)
loop do
  Thread.start(dts.accept) do |s|
    print(s, " is accepted\n")
    while line = s.gets
        puts line
        s.puts line.unpack('C*').pack(C*)
    end
    print(s, " is gone\n")
    s.close
  end
end

