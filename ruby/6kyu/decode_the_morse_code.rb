=begin
link: https://www.codewars.com/kata/552c028c030765286c00007d
=end

def decodeMorse(morseCode)
  morseCode.split('   ').select{ |c| c != '' }.map{ |w| w.split(' ').map{ |c| MORSE_CODE[c] }.join }.join(' ')
end
