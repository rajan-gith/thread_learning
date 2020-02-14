a = []
b = {}

GC.start

puts GC.stat(b)[:heap_live_slots]

puts "==== Before loop ===="

5.times {
  sleep(1)

  10_000.times { a << "abc" }

  puts GC.stat(b)[:heap_live_slots]
}

puts "==== After clearing array ===="

a = []
b = {}

GC.start

puts GC.stat(b)[:heap_live_slots]