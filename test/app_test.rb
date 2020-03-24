require_relative "test_helper"
require_relative "../app"

class AppTest < MiniTest::Test
	def test_one
		assert_nil App::solution(1)
	end
end