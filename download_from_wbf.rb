#!/usr/bin/ruby

# Get WBF web site
# Do it sequentially - one at a time.

for qmatch in 38500..45400
	s = "http://www.worldbridge.org/Repository/tourn/Veldhoven.11/Microsite/Results/BoardDetailsKO.asp?qmatchid=" + qmatch.to_s
	curl_s = "curl #{s}  > #{qmatch}"
	# puts "qmatch=#{qmatch}"
	system curl_s
end

