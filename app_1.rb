require 'pry'

module App1
	def solution(a)
		return nil if a.nil?

		1.upto(Float::INFINITY).detect do |num|
			!a.include?(num)
		end
	end
end
