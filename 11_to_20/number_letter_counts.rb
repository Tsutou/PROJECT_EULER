WORDS = {0 => "", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen", 20 => "twenty", 30 => "thirty", 40 => "forty", 50 => "fifty", 60 => "sixty", 70 => "seventy", 80 => "eighty", 90 => "ninety"}

 def count_letters(range)
   ans = 0
   range.each do |n|
     word = num_to_word(n)
     ans += word.gsub(/[-\s]/, "").length
   end
   p ans
 end

 def num_to_word(n)
   word = ""
   hund, ten = n.divmod(100)

   case hund
   when 1..9
     if ten.zero?
       word << "#{WORDS[hund]} hundred"
     else
       word << "#{WORDS[hund]} hundred and "
     end
   when 10
     word << "one thousand"
   end
   case ten
   when 10..19
     word << WORDS[ten]
   when 1..9, 20..99
     ten, one = ten.divmod(10)
     if one.zero?
       word << "#{WORDS[ten*10]}"
     elsif ten.zero?
       word << "#{WORDS[one]}"
     else
       word << "#{WORDS[ten*10]}-#{WORDS[one]}"
     end
   end
   word
 end

 count_letters(1..1000) # => 21124
