def nyc_pigeon_organizer(data)
    hash = {}
    data.each { |key, value|
        value.each { |k, v|
            v.each { |element|
                if !hash[element]
                  hash[element] = {}
                end

                if !hash[element][key]
                  hash[element][key] = []
                end 
                hash[element][key].push(k.to_s)
                
            }
        }
    }
    hash
end