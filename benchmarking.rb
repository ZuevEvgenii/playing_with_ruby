require 'benchmark'
require './array'

iterations = 5
array = (1..10000000).to_a

Benchmark.bm do |bm|
  
  bm.report 'Array#index' do
    iterations.times do
      array.index(5234210)
    end
  end

  bm.report 'Array#binary_search' do
    iterations.times do
      array.binary_search(5234210)
    end
  end
end