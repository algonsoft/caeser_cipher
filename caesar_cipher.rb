def caesar_cipher(string, factor)
  lower_shift = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
  shift_array = []
  new_array = string.chars


  new_array.each do|item| 
    if item >= "a" && item <= "z"
      ascii_code = (item.ord - 97 + factor) % 26
      ascii_code += 97
      item = ascii_code.chr
      shift_array.append(item)
    elsif item >="A" && item <= "Z"
      ascii_code = (item.ord - 65 + factor) % 26
      ascii_code += 65
      item = ascii_code.chr
      shift_array.append(item)
    else
      shift_array.append(item)
    end
    end
    print shift_array.join, "\n"
    
end

caesar_cipher("veni, vidi, vici",3)




