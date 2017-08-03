require 'minitest/autorun'
require 'pry'

class TestoddSum < MiniTest::Test
  def test_solution
    assert_equal ['ab', 'c_'], solution('abc')
    assert_equal ['ab', 'cd', 'ef'], solution('abcdef')
  end
end


def solution(string)
  n = 0
  out = []
  char = ""
  string += "_" if string.size.odd?
  string.chars.map do |x|
    n += 1
    if n == 2
      char << x
      out << char
      n = 0
      char = ""
    else
      char << x
    end
  end
  return out
end




