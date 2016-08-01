require 'benchmark/ips'
puts 'single quote'
puts 'hello world #{1 + 1}'
puts 'double quote'
puts "hello world #{1 + 1}"

n = 50_000

Benchmark.ips do |x|
  x.report 'single quote' do
    n.times do
      x =   'hello world #{1 + 1}'
    end
  end

  x.report 'double quote' do
    n.times do
      x =   "hello world #{1 + 1}"
    end
  end
  x.compare!
end

# single quote
# hello world #{1 + 1}
# double quote
# hello world 2
# Warming up --------------------------------------
#         single quote    13.000  i/100ms
#         double quote     5.000  i/100ms
# Calculating -------------------------------------
#         single quote    137.125  (± 0.7%) i/s -    689.000  in   5.024837s
#         double quote     52.169  (± 0.0%) i/s -    265.000  in   5.079660s

# Comparison:
#         single quote:      137.1 i/s
#         double quote:       52.2 i/s - 2.63x slower


