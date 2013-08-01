module NumberMethods
  #===Find all unique digits combinations for given number===
  def factorial(number)
    number.downto(1).inject(:*)
  end

  def number_shuffle(number)
    combinations_number = factorial(number.to_s.length)
    digits = number.to_s.split('')
    result = []
    result << digits.shuffle.join.to_i while combinations_number != result.uniq.length 
    result.uniq.sort
  end
  #==========================================================
end