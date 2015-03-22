require 'CSV'

filename = 'input.txt'

count = 0
CSV.open('sample-output.csv', 'wb') do |csv|
	File.open(filename, 'r').each_line do |line|
	if line != ''
		line = line.encode('UTF-8', :invalid => :replace)
		line = line.gsub('YOURUSERID', '1024562')
		row = line.split('|')
row = row.slice(0..-2)
    row.delete_at(33)
    row.delete_at(32)
    row.delete_at(31)
    row.delete_at(30)
    row.delete_at(29)
    row.delete_at(28)
    row.delete_at(27)
    row.delete_at(26)
    row.delete_at(25)
    row.delete_at(24)
    row.delete_at(23)
    row.delete_at(22)
    row.delete_at(21)
    row.delete_at(20)
    row.delete_at(19)
    row.delete_at(18)
    row.delete_at(16)
    row.delete_at(15)
    row.delete_at(14)
    row.delete_at(13)
    row.delete_at(12)
    row.delete_at(10)
    row.delete_at(9)
    row.delete_at(8)
    row.delete_at(5)
    row.delete_at(3)
    row.delete_at(2)


#    orderBy = [0,1,5,2,6,4,3]
ordered_row =[row[0], row[1], row[5], row[2], row[6], row[4], row[3]]

csv << ordered_row
puts count
# break if count == 10
count = count +1
row
	end
	end
end
