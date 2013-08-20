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
  
  #Find if a given number is a Kaprekar number. 703 ^ 2 = 494209 and 494 + 209 = 703.
  def kaprekar?(k)
    no_of_digits = k.to_s.size
    square = (k ** 2).to_s

    second_half = square[-no_of_digits..-1]
    first_half = square.size.even? ? square[0..no_of_digits-1] : square[0..no_of_digits-2]

    k == first_half.to_i + second_half.to_i
  end
  #==========================================================
  
  #The median of a set of data values is the middle value of the data set when it has been arranged in ascending order.
  def median(*list)
    return nil if list.empty?

    elements_count = list.count

    mid = elements_count / 2
    sorted_list = list.sort

    if elements_count.odd?
      sorted_list[mid]
    else
      (sorted_list[mid - 1] + sorted_list[mid]).to_f / 2.0
    end
  end
  
  #Find number of times for each word appears in that string.
  def occurrences(str)
  	str.scan(/\w+/).inject(Hash.new(0)) do |build, word| 
    	build[word.downcase] +=1
    	build
  	end
  end
end