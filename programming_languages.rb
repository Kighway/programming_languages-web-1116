def reformat_languages(styles)
  reformatted_languages = {}
  styles.each do |style, languages|
    languages.each do |language, type_hash|
      type = type_hash[:type]
      if reformatted_languages.include? (language)
        reformatted_languages[language][:style].push(style) unless reformatted_languages[language][:style].include?(style)
      else
        reformatted_languages[language] = { :style => [style], :type => type }
      end
    end
  end
  reformatted_languages
end
