def caesar_cipher(string, shift_factor)
    # Define the alphabet in lowercase and uppercase
    lowercase_alphabet = ('a'..'z').to_a
    uppercase_alphabet = ('A'..'Z').to_a
  
    # Convert the shift factor to a positive value to handle negative shifts
    shift_factor %= 26
  
    # Encrypt each character in the string
    encrypted_string = string.chars.map do |char|  # Corrected 'char' to 'chars'
      if lowercase_alphabet.include?(char)
        new_index = (lowercase_alphabet.index(char) + shift_factor) % 26
        lowercase_alphabet[new_index]
      elsif uppercase_alphabet.include?(char)
        new_index = (uppercase_alphabet.index(char) + shift_factor) % 26
        uppercase_alphabet[new_index]
      else
        char
      end
    end
  
    # Join the encrypted characters and return the modified string
    encrypted_string.join
  end
  
  # Test with some inputs
  puts caesar_cipher("Hello, World!", 5)
  # Output: "Mjqqt, Btwqi!"
  
  puts caesar_cipher("Ruby is fun!", 13)
  # Output: "Ehol vf sha!"
  
  puts caesar_cipher("What a wonderful world!", -7)
  # Output: "Pans t pexwpadg phsbk!"
  