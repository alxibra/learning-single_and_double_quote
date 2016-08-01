puts 'alexander ibrahim is in the house'
puts "alexander ibrahim is in the house"

require 'benchmark/ips'
n = 50_000

Benchmark.ips do |x|
  x.report 'single quote' do
    n.times do
      x =  'alexander ibrahim is in the house'
    end
  end

  x.report 'double quote' do
    n.times do
      x =  "alexander ibrahim is in the house"
    end
  end
  x.compare!
end

# alexander ibrahim is in the house
# alexander ibrahim is in the house
# Warming up --------------------------------------
#         single quote    13.000  i/100ms
#         double quote    12.000  i/100ms
# Calculating -------------------------------------
#         single quote    130.993  (± 0.8%) i/s -    663.000  in   5.061459s
#         double quote    131.095  (± 0.8%) i/s -    660.000  in   5.034725s

# Comparison:
#         double quote:      131.1 i/s
#         single quote:      131.0 i/s - same-ish: difference falls within error

