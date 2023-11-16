MORSE_CODE_DICT = {
  'A'=>'.-', 'B'=>'-...',
  'C'=>'-.-.', 'D'=>'-..', 'E'=>'.',
  'F'=>'..-.', 'G'=>'--.', 'H'=>'....',
  'I'=>'..', 'J'=>'.---', 'K'=>'-.-',
  'L'=>'.-..', 'M'=>'--', 'N'=>'-.',
  'O'=>'---', 'P'=>'.--.', 'Q'=>'--.-',
  'R'=>'.-.', 'S'=>'...', 'T'=>'-',
  'U'=>'..-', 'V'=>'...-', 'W'=>'.--',
  'X'=>'-..-', 'Y'=>'-.--', 'Z'=>'--..',
  '1'=>'.----', '2'=>'..---', '3'=>'...--',
  '4'=>'....-', '5'=>'.....', '6'=>'-....',
  '7'=>'--...', '8'=>'---..', '9'=>'----.',
  '0'=>'-----', ' '=>'   '
}

def decode_char(moscode_char)
  MORSE_CODE_DICT.key(moscode_char)
end

def decode_word(morse_word)
  morse_chars = morse_word.split(' ')
  decoded_word = ''
  morse_chars.each do |morse_char|
    char = decode_char(morse_char)
    decoded_word += char unless char.nil?
  end
  decoded_word
end