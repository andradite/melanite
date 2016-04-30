#  untitled.rb
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

#~ JACKPOT! You have just stumbled upon a collection of activation keys
#~ for the world's most used software of 2016! Like any responsible member
#~ of the Internet of Things in today's economy, you take it upon yourself
#~ to craft a keygen based on these keys so that you can begin reselling
#~ them to a less technologically inclined audience (or giving them away
#~ for free if you're that type of person).

#~ Now some of you may be reading this and thinking, "It's practically
#~ impossible to reverse engineer a key generator just from the output!"
#~ Well, that's a pretty negative outlook you have there....for the rest of
#~ you that actually want these coins I'll give you a special gift.

#~ That's right, you will be provided with not only the first digit each
#~ set in the hex-key, but you will also be afforded 3 HINTS! All you have
#~ to do to cash in on your hint(s) is codefriend me and send me a message
#~ letting me know you're doing the challenge. 

#~ For those that don't want the hints you are provided with both; the keys
#~ in the form XXXX-XXXX-XXXX-XXXX and the first digit generated in each
#~ set in the key by default.

#~ You can also find the keys here -> 

#~ The code I used to generate these keys is 415 characters.
#~ I'm interested to see what you all can do.

#~ Happy Coding!

#~ PS: All 4 digits of each set are generated in the same way in the same
#~ order. HOWEVER, that doesn't mean that they output that way.
#~ I.E. 1234-1234-1234-1234 may become 2314-1342-1234-4321.
#~ That's hint number 0.

#~ def genKey
	#~ a = Array.new
	#~ b = ('A'..'F').to_a
	
	#~ Generate first digit
	#~ x = rand(2..15)
	#~ if x > 9
		#~ a.push(b[x-10])
	#~ else
		#~ a.push(x)
	#~ end
	#~ p x
	#~ Generate second digit
	#~ if x%2==0
		#~ x=x+2
	#~ else
		#~ x=x-2
	#~ end
	#~ p x
	#~ while x > 15
		#~ x=x-15
	#~ end
	
	#~ while x < 0
		#~ x=x+15
	#~ end
		
	#~ if x > 9
		#~ a.push(b[x-10])
	#~ else
		#~ a.push(x)
	#~ end
	
	#~ Generate third digit
	#~ y = 0
	#~ 1.upto(x) do |n|
		#~ if x%n != 0
			#~ next
		#~ end
		#~ y += 1
	#~ end
	
	#~ if y==2	
		#~ x=x*4
	#~ else
		#~ x=x/4
	#~ end
	#~ p x
	#~ while x > 15
		#~ x=x-15
	#~ end
	
	#~ while x < 0
		#~ x=x+15
	#~ end
		
	#~ if x > 9
		#~ a.push(b[x-10])
	#~ else
		#~ a.push(x)
	#~ end
	
	#~ Generate fourth digit
	#~ if x == 0 || 16 % x == 0
		#~ x=x+8
	#~ else
		#~ x=x-8
	#~ end
	#~ p x
	#~ while x > 15
		#~ x=x-15
	#~ end
	
	#~ while x < 0
		#~ x=x+15
	#~ end
	
	#~ if x > 9
		#~ a.push(b[x-10])
	#~ else
		#~ a.push(x)
	#~ end
	
	#~ a.join
#~ end

#~ File.open('keys.dat', 'wb') do |file|
	#~ 20.times do
		#~ e = genKey
		#~ a = e[0] + e[1] + e[2] + e[3]
		#~ e = genKey
		#~ b = e[1] + e[2] + e[3] + e[0]
		#~ e = genKey
		#~ c = e[2] + e[3] + e[0] + e[1]
		#~ e = genKey
		#~ d = e[3] + e[0] + e[1] + e[2]
		#~ file << a + '-' + b + '-' + c + '-' + d + "\n"
	#~ end
#~ end





