puts 'single quote'
puts 'alexander ibrahim\n is in the house, i don\'t'
puts 'double quote'
puts "alexander ibrahim\n is in the house, i don\'t"

require 'benchmark/ips'
n = 50_000

Benchmark.ips do |x|
  x.report 'single quote' do
    n.times do
      x =  'alexander ibrahim\n is in the house'
    end
  end

  x.report 'double quote' do
    n.times do
      x =  "alexander ibrahim\n is in the house"
    end
  end
  x.compare!
end

# single quote
# alexander ibrahim\n is in the house, i don't
# double quote
# alexander ibrahim
#  is in the house, i don't
# Warming up --------------------------------------
#         single quote    13.000  i/100ms
#         double quote    13.000  i/100ms
# Calculating -------------------------------------
#         single quote    131.397  (± 0.8%) i/s -    663.000  in   5.045887s
#         double quote    131.348  (± 0.8%) i/s -    663.000  in   5.047797s

# Comparison:
#         single quote:      131.4 i/s
#         double quote:      131.3 i/s - same-ish: difference falls within error

