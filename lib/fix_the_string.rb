def fix_the_string str
    continue = true

    while continue
        continue = false
        (str.size - 1).times do |i|
            if (str[i] != str[i+1] && (str[i].upcase == (str[i+1].upcase)))
                str = str[0...i] + str[i +2..-1]
                continue = true
                break
            end
        end
    end
    str
end



# remove any duplicate letters (downcased) that are immediately next to each other
# turn the string into an array 
# loop through the array and compare current idx with idx+1 (downcased)
# If they aren't the same, push to a newArr
# newArr.join()