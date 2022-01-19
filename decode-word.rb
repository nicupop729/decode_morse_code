def decode_word(morse_code)
    word = []
    code_letters = { "a" => ".-","b" => "-...","c" => "-.-.","d" => "-..","e" => ".","f" => "..-.","g" => "--.","h" => "....","i" => "..","j" => ".---","k" => "-.-","l" => ".-..","m" => "--","n" => "-.","o" => "---","p" => ".--.","q" => "--.-","r" => ".-.","s" => "...","t" => "-","u" => "..-","v" => "...-","w" => ".--","x" => "-..-","y" => "-.--","z" => "--.."," " => " ","1" => ".----","2" => "..---","3" => "...--","4" => "....-","5" => ".....","6" => "-....","7" => "--...","8" => "---..","9" => "----.","0" => "-----" }
    morse_arr = morse_code.split(" ")
    morse_arr.each do |letter_code|
        code_letters.each do |key, value|
            if letter_code == value
                word.push key
            end
        end
    end
    print word.join("")
end

decode_word "-- -.--"
