#!/usr/bin/ruby

# Get WBF web site

# To speed up the process, add a "&" in the curl statement.
# But... if you do that, and the range is too big, then the system may run out of fork resources
# If this is the case, remove the & - code will run slower but will complete
for qmatch in 38500..40500
	s = "http://www.worldbridge.org/Repository/tourn/Veldhoven.11/Microsite/Results/BoardDetailsKO.asp?qmatchid=" + qmatch.to_s
	# Runs quicker if run in background.
	# c = "curl #{s}  > #{qmatch} &"
	curl_s = "curl #{s}  > #{qmatch}"
	# puts "qmatch=#{qmatch}"
	system curl_s
end

