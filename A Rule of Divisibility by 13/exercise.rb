require pry
def thirt(n)
  array_of_digits = n.digits
  pattern = [1, 10, 9, 12, 3, 4]
  pattern *= (array_of_digits.size / pattern.size + 2)
  sum = 0
  !while sum == sum  do
    array_of_digits.each_with_index do |number, index|
      sum += number * pattern[index]
    end
    binding.pry
  end
  return sum
end



