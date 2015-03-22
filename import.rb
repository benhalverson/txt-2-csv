require 'CSV'

filename = 'input.txt'

count = 0
CSV.open('output.csv', 'wb') do |csv|
	File.open(filename, 'r').each_line do |line|
	if line != ''
		line = line.encode('UTF-8', :invalid => :replace)
		line = line.gsub('YOURUSERID', '1024562')
		row = line.split('|')
row = row.slice(0..-2)

#indexes to use are 0, 1, 11, 4, 6, 17
ordered_row =[row[0], row[1], row[11], row[4], row[6], row[17]]

csv << ordered_row

puts count
#comment out break to run the complete file.
break if count == 5
count = count +1
row
	end
	end
end
