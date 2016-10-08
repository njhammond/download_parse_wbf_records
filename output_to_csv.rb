#!/usr/bin/ruby

# Given an curl output file from WBF, attempt to parse it to get the data
# for matches.csv

ARGV.each do |file_name|
	data_file = File.read(file_name)

	# If it contains garbage skip
	next if data_file.include? "<h2>500 - Internal server error.</h2>"

	# If not, read in the various information
	name = "first_country/" + file_name + ".tid"
	tid = File.read(name)
	tid.chomp!

	name = "first_country/" + file_name + ".txt"
	c1 = File.read(name)
	c1.chomp!
	c1.gsub!(/ /, "_")

	name = "second_country/" + file_name + ".txt"
	c2 = File.read(name)
	c2.chomp!
	c2.gsub!(/ /, "_")

	name = "players/" + file_name + ".players.one.txt"
	players = File.read(name)
	players.chomp!

	next if players.nil?
	next if players.size < 1

	s = file_name + "," + tid + "," + c1 + "," + c2 + "," + players
	puts s
end
