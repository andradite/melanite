#  mfTfhLPNnZJsxpe5Z.rb
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


#~ def TheNextPalindrome(k,l=k.size)
	#~ if l%2 == 0
		#~ a = k[0...l/2].to_i
		#~ k = (a+1).to_s
		#~ k += k[0...k.size].reverse
	#~ else
		#~ a = k[0..l/2].to_i
		#~ k = (a+1).to_s
		#~ k += k[0...k.size-1].reverse
	#~ end
#~ end

def TheNextPalindrome(k)
	l = k.size
	if l%2 == 0
		a = k[0...l/2].to_i
		k = (a+1).to_s
		k += k[0...k.size].reverse
	else
		a = k[0..l/2].to_i
		p k = (a+1).to_s
		p k[k.size-1] == '0'
		k += k[0...k.size-1].reverse
	end
end








puts "808" + "->" + TheNextPalindrome('808')
#~ puts "2133" + "->" + TheNextPalindrome('2133')
#~ puts "7913574234241111" + "->" + TheNextPalindrome('7913574234241111')
#~ puts "123456789" + "->" + TheNextPalindrome('123456789')
#~ puts "1" + "->" + TheNextPalindrome('1')
#~ puts "11" + "->" + TheNextPalindrome('11')
#~ puts "1234567801100000000" + "->" + TheNextPalindrome('1234567801100000000')
#~ puts "191" + "->" + TheNextPalindrome('191')
#~ puts "333" + "->" + TheNextPalindrome('333')
#~ puts "74193743" + "->" + TheNextPalindrome('74193743')
#~ puts "808" + "->" + TheNextPalindrome('808')
puts "9" + "->" + TheNextPalindrome('9')
puts "99" + "->" + TheNextPalindrome('99')
















