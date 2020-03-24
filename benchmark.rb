require 'benchmark/ips'
require_relative './app_1'

def random_array_6
  @a ||= Array.new(100000) { rand(-1000000..1000000) }
end

def random_array_5
  @b ||= Array.new(10000) { rand(-1000000..1000000) }
end

def random_array_4
  @c ||= Array.new(1000) { rand(-1000000..1000000) }
end

def random_array_3
  @d ||= Array.new(100) { rand(-1000000..1000000) }
end

def random_array_2
  @e ||= Array.new(10) { rand(-1000000..1000000) }
end


Benchmark.ips do |a|
  a.report("solution : 6") { App1::solution(random_array_6.dup) }
  a.report("solution2: 6")  { App1::solution2(random_array_6.dup) }
  a.compare!
end

Benchmark.ips do |a|
  a.report("solution : 5") { App1::solution(random_array_5.dup) }
  a.report("solution2: 5")  { App1::solution2(random_array_5.dup) }
  a.compare!
end


Benchmark.ips do |a|
  a.report("solution : 4") { App1::solution(random_array_4.dup) }
  a.report("solution2: 4")  { App1::solution2(random_array_4.dup) }
  a.compare!
end

Benchmark.ips do |a|
  a.report("solution : 3") { App1::solution(random_array_3.dup) }
  a.report("solution2: 3")  { App1::solution2(random_array_3.dup) }
  a.compare!
end

Benchmark.ips do |a|
  a.report("solution : 2") { App1::solution(random_array_2.dup) }
  a.report("solution2: 2")  { App1::solution2(random_array_2.dup) }
  a.compare!
end