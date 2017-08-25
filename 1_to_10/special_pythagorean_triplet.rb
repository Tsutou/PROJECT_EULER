def pythagoras

  for a in (1..500) do
    for b in (1..500) do
      for c in (1..1000) do
        if ( a + b + c ) == 1000 && (a ** 2 + b ** 2) == c ** 2
          puts a , b , c
          puts a * b * c
          break
        end
      end
    end
  end

end

pythagoras
