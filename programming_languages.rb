def reformat_languages(languages_by_style)
  new_hash = {}
  languages.each do |style,language|
    language.each do |name, details|
      details.each do |type,value|
       if language == :javascript
          new_hash[language] = {
            type => value,
            :style => [:oo, :functional]
         }
       else 
         new_hash[language] = {
            type => value,
            :style => [style]
        }
      end 
      end
    end 
  end 
  return new_hash
end
