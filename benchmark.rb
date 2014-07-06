require 'benchmark'

str = Benchmark.measure do
  100_000_000.times do
    "test" == "test"
  end
end.total

sym = Benchmark.measure do
  100_000_000.times do
    :test == :test
  end
end.total

puts "String: " + str.to_s
puts "Symbol: " + sym.to_s
puts

