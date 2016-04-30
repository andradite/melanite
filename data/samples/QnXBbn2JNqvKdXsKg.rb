#  QnXBbn2JNqvKdXsKg.rb
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

def cBin(n)
	#~ defines variables
	x = y = 1;z = '0'
	#~ calculates necessary # of binary digits
	while y < n
		y += x *= 2
		z << '0'
	end
	#~ converts decimal # to binary
	z.size.times { |i|
		n-x >= 0 ? (z[i] = '1';n -= x) : i
		x /= 2	}
	#~ return binary #
	return z
end

#~ def cHex(n)



#~ end

#~ x = gets.chomp
#~ x.to_i = n
#~ p n
#~ p x = cBin(n)
#~ p x = cHex(x)


x = Array.new(13,1)
z = x.join
y = z.split('')

p y
#~ if x.length%4 == 0
#~ p x
#~ else
#~ p x.length/4
#~ end
