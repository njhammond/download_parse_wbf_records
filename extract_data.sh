#!/bin/sh

# Create directories to hold the data.
mkdir -p players
mkdir -p first_country
mkdir -p second_country

for file in ?????
do
	echo $file

	out=players/${file}.players
	grep person.asp $file > $out
	ruby players_to_one_line.rb $out > $out.one.txt

	out=first_country/${file}
	grep "43%" $file > $out
	ruby country_to_one_line.rb $out > $out.txt
	ruby tid_to_one_line.rb $out > $out.tid

	out=second_country/${file}
	grep "44%" $file > $out
	ruby country_to_one_line.rb $out > $out.txt
done
