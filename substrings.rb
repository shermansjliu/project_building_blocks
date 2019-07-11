def substrings (str, _list)
    str = str.downcase.gsub(/[^a-z\s]*/, '')
    str = str.split (' ')

    result = {}

    for word in _list
        for w in str
            if w.match?(word)
                if result.key?(word)
                    result[word] += 1
                else
                    result[word] = 1
                end
            end
        end
    end

    result


end
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("Howdy partner, sit down! How's it going?", dictionary)
