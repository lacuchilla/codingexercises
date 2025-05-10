def split(s, c)
	res = []

	return res if s.empty?

	string_last_index = s.length - 1
	i = 0
	built_string = ""

	while i <= string_last_index
		# if we find the character at the first or last index, add an empty string to the array
		if (i == 0 || i == string_last_index) && s[i] == c
			res.append("")
		end
		# if we find the character and the next character is also the character we're looking for, add an empty string to array
		if s[i] == c && s[i + 1] == c
			res.append("")
		end
		# if the char isn't the one we're looking for, and we're not on the last index, 
		# and the next character is the character we're looking for, add the built string to the array 
		
		if s[i] != c && i != string_last_index && s[i + 1] == c
			built_string += s[i]
			res.append(built_string)
			built_string = ""
		end

		# if the character isn't the one we're looking for and the next character isn't
		# the one we're looking for, add s[i] to the built string
		if s[i] != c && s[i + 1] != c
			built_string += s[i]
		end
		i += 1
	end
  # This adds the built string to the end of the array if the string isn't empty
	res.append(built_string) if !built_string.empty?

	res
end

s = "split by space"
c = ' '

puts split(s, c).inspect

s = "beekeeper needed"
c = 'e'

puts split(s, c).inspect

s = "/home/./..//Documents/"
c = '/'

puts split(s, c).inspect

s = ""
c = '?'

puts split(s,c).inspect
