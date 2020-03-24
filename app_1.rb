require 'pry'

module App1
	def self.solution(a)
		return nil unless a.kind_of?(Array)

		1.upto(Float::INFINITY).detect do |num|
			!a.include?(num)
		end
	end

	def self.solution2(a)
		return nil unless a.kind_of?(Array)

		n = a.size
		count = [0]*(n+1)

		(0..n).each do |k|
			if(!a[k].nil?) && (n >= a[k]) && (a[k] > 0)
				count[a[k]] += 1
			end
		end

		(1..(n+1)).each do |k|
			if count[k] == 0
				return k
			end
		end


		return n+1
	end
end


=begin
Write a function:

    def solution(a)

that, given an array A of N integers, returns the smallest positive integer (greater than 0) that does not occur in A.

For example, given A = [1, 3, 6, 4, 1, 2], the function should return 5.

Given A = [1, 2, 3], the function should return 4.

Given A = [−1, −3], the function should return 1.

Write an efficient algorithm for the following assumptions:

        N is an integer within the range [1..100,000];
        each element of array A is an integer within the range [−1,000,000..1,000,000].

=end
