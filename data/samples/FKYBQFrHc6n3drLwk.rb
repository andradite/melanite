#  FKYBQFrHc6n3drLwk.rb
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

#~ def GoodYears(a, b, d=0)
	#~ a.to_i.upto(b.to_i) do |c|
		#~ x = y = 1;z = "0"
		#~ while y < c
			#~ y += x *= 2
			#~ z << '0'
		#~ end
		#~ z.size.times do |i|
			#~ c-x >= 0 ? (z[i] = '1';c -= x) : i
			#~ x /= 2
		#~ end
		#~ (z.include? "0") ? d+=1 : d
	#~ end
	#~ return d
#~ end




#~ def GoodYears(a, b, d=1, e=1)
    #~ a.to_i.upto(b.to_i) do |c|
		#~ while d<c
			#~ d*=2
			#~ e+=d
		#~ end
		#~ e-=d
        #~ if c-d==0
			#~ e+=1
			#~ next
		#~ end
        #~ while true
			#~ d/=2;c-=d
			#~ if c<0
				#~ e+=1
				#~ break
			#~ end
			#~ if c==d && d>0
				#~ e+=1
				#~ break
			#~ end	
			#~ if c==0
				#~ break
			#~ end
		#~ end
    #~ end
    #~ e
#~ end

#~ p GoodYears("5","10")

