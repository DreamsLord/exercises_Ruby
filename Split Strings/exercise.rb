require 'minitest/autorun'

class TestoddSum < MiniTest::Test
  def test_solution
    assert_equal ['ab', 'c_'], solution('abc')
    assert_equal ['ab', 'cd', 'ef'], solution('abcdef')
  end
end


def solution(string)

end
