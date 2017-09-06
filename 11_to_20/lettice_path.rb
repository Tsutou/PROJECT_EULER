 def lattice_path(sides)
   a = Array.new(sides) { 1 }

   1.upto(sides - 1) do |n|
     a[n] *= 2
     (n + 1).upto(sides - 1) do |n|
       a[n] = a[n-1] + a[n]
     end
   end

   a[sides - 1]
 end

 size = 20
 puts lattice_path(size + 1)
