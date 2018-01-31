def reformat_languages(languages)
  new_hash = {}
  languages.each do |style,names|
    names.each do |name, details|
      details.each do |type,value|
       if name == :javascript
           new_hash[name] = {
             :type => value,
             :style => [:oo, :functional]
           }
         else
           new_hash[name] = {
              :type => value,
              :style => [style]
          }
      end 
      end
    end 
  end 
  return new_hash
end
