#!/usr/bin/ruby

# Given a players file
# convert to one line

ARGV.each do |file_name|
	data_file = File.read(file_name)

	player_ids = Array.new
	player_names = Array.new

	data_file.each_line do |line|
		line.chomp!

		id = line.dup
		id.gsub!(/.*qryid=/, "")
		id.gsub!(/".*/, "")

		player_ids << id

		name = line.dup
		name.gsub!(/.*blank">/, "")
		name.gsub!(/<.*/, "")
		player_names << name
	end

	next if (player_ids.size < 8)
	next if (player_names.size < 8)

	s = player_ids.join(",")
	t = player_names.join(",")
	s1 = t + "," + s
	puts s1
end
