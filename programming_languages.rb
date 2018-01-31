def reformat_languages(languages)
  new_hash = {}
  languages.each do |style,language|
    language.each do |detail, value|
      if language = :javascript
        new_hash[:language] = {
          :type => value
          :style => [:oo, :functional]
        }
      else 
        new_hash[:language] = {
          :type => value
          :style => [style]
        }
      end
    end 
  end 
  new_hash
end
