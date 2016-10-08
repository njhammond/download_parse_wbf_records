#!/usr/bin/ruby

# Given a file containing a TID
# convert to one line

ARGV.each do |file_name|
	data_file = File.read(file_name)

	data_file.each_line do |line|
		line.chomp!

		name = line.dup
		name.gsub!(/.*qtournid=/, "")
		name.gsub!(/qph.*/, "")
		name.gsub!(/\&/, "")
		puts name
	end
end
#                    <td width="43%"><div align="center"><b><font size="+1" color="#000000"><a href="knockoutphase.asp?qtournid=884&qphase=" target="_blank">LATVIA</a></font></b></div></td>
