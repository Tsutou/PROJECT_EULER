
def palindrome_middle(a,b)

  inputs = [a..b]
  p inputs
  palindrome = []

  inputs.each do |num|
    if num == num.reverse!
      palindrome << num
    end
  end

  p palindrome

  if palindrome.length % 2 == 0
    idx1 = palindrome.length / 2
    idx2 = idx1 + 1
    puts palindrome[idx1],palindrome[idx2]
  else
    idx  = palindrome.length / 2 + 1
    puts palindrome[idx.floor]
  end

end





a = gets.to_i
b = gets.to_i

palindrome_middle(a,b)