
def decode_message(message)
  @sentence = message.split
  @sentence.each do |word|
    puts(word)
  end
end
decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
 