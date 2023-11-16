MORSE_CODE_DICT = {
  'A' => '.-', 'B' => '-...',
  'C' => '-.-.', 'D' => '-..', 'E' => '.',
  'F' => '..-.', 'G' => '--.', 'H' => '....',
  'I' => '..', 'J' => '.---', 'K' => '-.-',
  'L' => '.-..', 'M' => '--', 'N' => '-.',
  'O' => '---', 'P' => '.--.', 'Q' => '--.-',
  'R' => '.-.', 'S' => '...', 'T' => '-',
  'U' => '..-', 'V' => '...-', 'W' => '.--',
  'X' => '-..-', 'Y' => '-.--', 'Z' => '--..',
  '1' => '.----', '2' => '..---', '3' => '...--',
  '4' => '....-', '5' => '.....', '6' => '-....',
  '7' => '--...', '8' => '---..', '9' => '----.',
  '0' => '-----', ' ' => '   '
}.freeze

def decode_char(morse_char)
  MORSE_CODE_DICT.key(morse_char)
end

def decode_word(morse_word)
  morse_chars = morse_word.split
  decoded_word = ''
  morse_chars.each do |morse_char|
    char = decode_char(morse_char)
    decoded_word += char unless char.nil?
  end
  decoded_word
end

def decode_message(morse_message)
  morse_words = morse_message.split('  ')
  decoded_message = ''
  morse_words.each do |morse_word|
    decoded_word = decode_word(morse_word)
    decoded_message += "#{decoded_word} "
  end
  decoded_message.strip
end

# puts  decode_message("-- -.--   -. .- -- .")
