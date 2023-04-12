def caesar_cipher(message, adjustment)
  #split string into array, use map to transform each element
  adjustedMessage = message.split("").map do |letter|
    if letter.match(/[A-Za-z]/) #only want to shift letters
      ((letter.ord - (letter.match(/[A-Z]/) ? 65 : 97) + adjustment) % 26 + (letter.match(/[A-Z]/) ? 65 : 97)).chr
    else
      letter
    end
  end
  #convert array back to string and return
  adjustedMessage.join("")
end

puts caesar_cipher("What a string!", 5)
puts caesar_cipher("Bmfy f xywnsl!", 21)