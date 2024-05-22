def apply_cipher(message, key)
  puts "The message is: #{message}"
  puts "The key is: #{key}"

  ciphered_bytes = message.bytes.map do |byte|
    case byte
    when 65..90
      if byte + key > 90
        byte = (byte + key - 26).chr
      else
        (byte += key).chr
      end
    when 97..122
      if byte + key > 122
        byte = (byte + key - 26).chr
      else
        (byte += key).chr
      end
    else
      byte.chr
    end
  end

  ciphered_string = ciphered_bytes.join
  puts ciphered_string
end

apply_cipher("What a string!",5)

