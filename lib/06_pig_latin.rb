def translate(string, *strings)
  strings.unshift(string)

  voyelles = ["a","e","i","o","u"]
  consonnes = ("a".."z").to_a - voyelles
  final_array = []
  result = ""

  
  strings.each do |word|
    chars = word.chars

    if word.start_with?("sch")
      #ajoute sch à la fin et le supprime au début
      # chars = chars.concat(chars[0..2]).drop(3)
      chars = chars[3..-1] + chars[0..2]

    elsif word.start_with?("qu")
      chars = chars[2..-1] + chars[0..1]

    elsif consonnes.include?(chars[0])
      # chars = chars.concat([chars[0]]).drop(1)
      chars = chars[1..-1] + chars[0]

      if word.start_with?("qu")
        # chars = chars.concat(chars[0..1]).drop(2)
        chars = chars[2..-1] + chars[0..1]

      elsif consonnes.include?(chars[0])
        # chars = chars.concat([chars[0]]).drop(1)
        chars = chars[1..-1] + chars[0]

        if consonnes.include?(chars[0])
          # chars = chars.concat([chars[0]]).drop(1)
          chars = chars[1..-1] + chars[0]
        end
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