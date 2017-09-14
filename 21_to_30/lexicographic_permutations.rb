idx   = 1
array = Array.new

[0,1,2,3,4,5,6,7,8,9].permutation(10) do |lex|

  if idx == 1000000

    for num in 0..10

    p lex[0..num]

    end

  end

  idx = idx + 1

end
