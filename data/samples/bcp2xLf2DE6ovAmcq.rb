#  bcp2xLf2DE6ovAmcq.rb
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


def tan(n)
	#~ defines variables
	z = 0;y = ""
	
	#~ generates sequence that will always include target #
	1.upto(n){ |i|
	y << i.to_s	}
	
	#~ scans sequence for target number
	while
		w = y[z...z+n.to_s.size].to_i
		if w == n
			break
		end
		z+=1
	end
	
	#~ returns index of target number
 	z+1
end
