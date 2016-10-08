download_parse_wbf_records
==========================

Tools to help with downloading, the parsing World Bridge Federation (WBF) records

Install
==

Download this Git.


Reason
==

I originally wrote this script to help with downloading data for Veldhoven, 2011 and parsing the data so could merge it with video from the event.

Download matches
==

Edit download_from_wbf.rb and specify a range of matches to download. Easiest way is to find range is to go the WBF web site and find an approximate starting MatchID and an approximate end MatchID.

For Veldhoven, a good range is 38500 to 40500

	ruby download_from_wbf.rb

This creates files in your local directory that correspond to the MatchID.

Extract data
==

In my case, I wanted to extra the teams, tournament ID, player names, player IDs. Nothing fancy about the code - simple brute force.

	sh extract_data.sh


Create CSV file
==

Again, nothing fancy. Brute force. Assumes all matches are 5 digit IDs. No other 5 character file in local directory.

	ruby output_to_csv.rb ????? > matches.csv

Output
==

The output is a file called matches.csv that contains a single line for each valid WBF file. The line contains the match ID, tournament ID, player names, player WBF IDs.

License
==

All of this under the MIT License. See LICENSE.
