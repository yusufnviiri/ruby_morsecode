@container = {
    " " => " ",
    ".-" => "A",
    "-..." => "B",
    "-.-." => "C",
    "-.." => "D",
    "." => "E",
    "..-." => "F",
    "--." => "G",
    "...." => "H",
    ".." => "I",
    ".---" => "J",
    "-.-" => "K",
    ".-.." => "L",
    "--" => "M",
    "-." => "N",
    "---" => "O",
    ".--." => "P",
    "--.-" => "Q",
    ".-." => "R",
    "..." => "S",
    "-" => "T",
    "..-" => "U",
    "...-" => "V",
    ".--" => "W",
    "-..-" => "X",
    "-.--" => "Y",
    "--.." => "Z"
  }
  
  def letter_symbol(letter)
    @current_letter = @container[letter]
    @current_letter
  end
  
  def decode_word(word)
    @sentence = word.split
    @current_word = ''
    @sentence.each do |line|
      letter_symbol(line)
      @current_word += letter_symbol(line)
    end
    print "#{@current_word} "
  end
  
  def decode_message(message)
    @sentence = message.split
    @sentence.each do |enum|
      decode_word(enum)
    end
  end
  
  decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')