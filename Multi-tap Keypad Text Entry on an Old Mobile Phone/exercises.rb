require 'minitest/autorun'

class TestPresses < MiniTest::Test
  def test_should_work_for_simple_words
    Test.assert_equals 9, presses("LOL")
  end

  def test_should_work_for_phrases_with_spaces
    Test.assert_equals 13, presses("HOW R U")
  end
end

def presses(input)
  hash = Hash.new
  hash[1] = ['1','A','D','G','J','M','P','T','W','*',' ','#']
  hash[2] = ['B','E','H','K','N','Q','U','X','0']
  hash[3] = ['C','F','I','L','O','R','V','Y']
  hash[4] = ['S','Z','2','3','4','5','6','8']
  hash[5] = ['7','9']
  input = input.upcase.chars
  amount = 0
  input.each do |x|
    char = hash.select{|k, v| v.index(x)}
    amount += char.keys[0]
  end
  return amount
end

# Best solution
def presses2(phrase)
  groups = ["1", " 0", "ABC2", "DEF3", "GHI4", "JKL5", "MNO6", "TUV8", "PQRS7", "WXYZ9"]
  phrase.upcase.chars.map do |c|
    1 + groups.find { |grp| grp.include?(c) }.index(c)
  end.reduce(:+)
end



