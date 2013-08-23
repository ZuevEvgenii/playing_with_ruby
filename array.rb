class Array
  def binary_search(element, first = 0, last = length - 1)
    return if first > last    
    middle = (first + last) / 2 
    element < self[middle] ? last = middle - 1 : first =  middle + 1
    element == self[middle] ? middle : binary_search(element, first, last)
  end
end