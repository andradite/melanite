#  zyMs5anSyPzgndPK5.rb
#  
#  Copyright 2016 ChaosX <ChaosX@CHAOSX-PC>
#  
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#  
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#  
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
#  MA 02110-1301, USA.
#  
#  


#~ def factors(x)
    #~ 1.upto(Math.sqrt(x)).select {|i| (x % i).zero?}.inject([]) do |f, i| 
      #~ f << i
      #~ f << x / i unless i == x / i
      #~ f
  #~ end.sort
#~ end

#~ def DivisorProduct(y)
	#~ z = y.inject(:*	)
	#~ 1.upto(z/4) do |n|
		#~ if z == factors(n).inject(:*)
			#~ z = n
			#~ break
		#~ end
	#~ end
	#~ z
#~ end

#~ def factors(x)
    #~ 1.upto(Math.sqrt(x)).select {|i| (x % i).zero?}.inject([]) do |f, i| 
      #~ f << i
      #~ f << x / i unless i == x / i
      #~ f
  #~ end.sort
#~ end

#~ def DivisorProduct(y)
	#~ z = y.inject(:*)
	#~ z.times{ |n|
		#~ y = 1.upto(Math.sqrt(n)).select {|i| (n % i)==0}.inject([]){ |f, i| 
			#~ f << i
			#~ f << n / i if i != n / i
			#~ f
		#~ }
		#~ z == y.inject(:*) ? (return n) : n
	#~ }
#~ end

def DivisorProduct(y)
	z = y.inject(:*)
    z.times{ |n|
		y = 1.upto(Math.sqrt(n)).select {|i| (n%i)==0}.inject([]){ |f, i| 
			f << i
			f << n/i if i != n/i
			f
		}
        return n if z == y.inject(:*)
	}
end























a = [2, 2, 2, 2, 2, 2, 2, 2, 2, 5, 5, 5, 5, 5, 5, 5, 5, 5]
p DivisorProduct(a)
