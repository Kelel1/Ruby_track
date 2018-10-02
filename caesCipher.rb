# implements Caesar Cipher

def caesar_cipher(phrase, key)
  newPhrase = ""
  val = 0

  phrase.each_byte do |c|
    
    if c > 64 and c < 91
      c = ((c - 65) + key) % (26)
      val = c + 65
    else 
      val = c 
    end
    if c > 96 and c < 123
      c += key % (26)
      val = c 
    end 

    newPhrase += val.chr
  end

  puts newPhrase
end

caesar_cipher('This is CS50!', 2)










 