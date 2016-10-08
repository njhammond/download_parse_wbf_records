#!/usr/bin/ruby

# Given a file containing a country
# convert to one line

ARGV.each do |file_name|
	data_file = File.read(file_name)

	data_file.each_line do |line|
		line.chomp!

		name = line.dup
		name.gsub!(/.*blank">/, "")
		name.gsub!(/<.*/, "")
		puts name
	end
end
