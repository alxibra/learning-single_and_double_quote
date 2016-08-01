puts 'alexander ibrahim\n is in the house'
puts "alexander ibrahim\n is in the house"

require 'benchmark/ips'
n = 50_000

Benchmark.ips do |x|
  x.report 'single quote' do
    n.times do
      x =  'alexander ibrahim\n is in the house'
    end
  end

  x.report 'single quote' do
    n.times do
      x =  "alexander ibrahim\n is in the house"
    end
  end
  x.compare!
end
