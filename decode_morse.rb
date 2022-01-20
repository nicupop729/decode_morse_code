def decode_char(char_code)
  morse_code = { '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
 '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K',
 '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P', '--.-' => 'Q',
 '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U', '...-' => 'V', '.--' => 'W',
 '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z', '|' => ' ', '/' => ' ' }
  morse_code[char_code]
end

def decode_word(word_code)
  word_code = word_code.split
  word_result = ''
  word_code.each do |code_char|
    word_result += decode_char(code_char)
  end
  word_result
end

def decode_sentence(sentence_code)
  sentence_code = sentence_code.split('   ')
  sentence_result = ''
  sentence_code.each do |word|
    sentence_result += "#{decode_word(word)} "
  end
  sentence_result
end

print decode_sentence('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ...')
