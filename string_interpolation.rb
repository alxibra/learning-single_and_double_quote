require 'benchmark/ips'
puts 'hello world #{1 + 1}'
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

