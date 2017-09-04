def ceasar_cypher(sentence, cypher) 
  encrypted = []
  sentence.split("").each do |letter|
    letter_number = letter.ord
    if /\w/.match(letter)
     if /[A-Z]/.match(letter)
      if letter.ord + cypher > 90
        encrypted.push((((letter_number + cypher) - 90) + 64).chr)
      else
        encrypted.push((letter_number + cypher).chr)
      end
    else
      if letter.ord + cypher > 122
        encrypted.push((((letter_number + cypher) - 122) + 96).chr)
      else
        encrypted.push((letter_number + cypher).chr)
      end
    end
  else
    encrypted.push(letter)
  end
end
puts encrypted.join()
end 

# a-z = [96..122]
# A-Z = [65..90]
ceasar_cypher("My name is Tate!!", 13)

