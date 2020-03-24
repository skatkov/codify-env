require_relative "test_helper"
require_relative "../app_1"

class App1Test < MiniTest::Test
	def test_one
		assert_equal 5, App1::solution([1, 3, 6, 4, 1, 2])
		assert_equal 4, App1::solution([1, 2, 3])
		assert_equal 1, App1::solution([-1, -3])
		assert_nil App1::solution(nil)
		assert_nil App1::solution('abc')
	end
end