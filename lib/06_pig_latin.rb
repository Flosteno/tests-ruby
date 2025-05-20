def translate(string, *strings)
  strings.unshift(string)

  vowels = ["a","e","i","o","u"]
  consonants = ("a".."z").to_a - vowels
  final_array = []
  result = ""
  
  
  strings.each do |word|
    chars = word.chars

    #Si commence par une voyelle ajoute le mot +ay au tableau
    if vowels.include?(chars[0])
      final_array << word + "ay"
      next
    end
    
    #Si commence par sch ou qu
    if chars[0..2] == ["s", "c", "h"]
      chars = chars[3..-1] + chars[0..2]

    elsif chars[0..1] == ["q", "u"]
      chars = chars[2..-1] + chars[0..1]
    
    else

    index = 0

    #Parcours le tableau de caractères et s'arrête après avoir parcouru tout le tableau ou lorsqu'il tombe sur une voyelle
      while index < chars.length && !vowels.include?(chars[0])

        
        if chars[0] == "q" && chars[1] == "u"
          chars = chars[2..-1] + chars[0..1]
          break
        else
          chars = chars[1..-1] + [chars[0]]
        end

        index +=1
      end
    end
    
    final_array << chars.join + "ay"
  end
  result = final_array.join(" ")

  return result

end

#ajoute ay à la fin
#ne fais rien aux mots commençant par une voyelle
#déplace derrière jusqu'à trois consonnes  
#si débute par sch déplace à la fin
#si débute par qu déplace à la fin
#si une consonne devant qu déplace qu à la fin
#traduis plusieurs mots