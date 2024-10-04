def first_non_repeating_char(str)
    i = 0
    while i < str.length
      current_char = str[i]
      count = 0  
      j = 0
      while j < str.length
        if str[j] == current_char
          count += 1
        end
        j += 1
      end

      if count == 1
        return current_char  
      end
  
      i += 1
    end
    return nil
  end
  
  puts "Enter a string:"
  input_string = ""
  while true
    char = $stdin.getc  
    break if char == "\n" 
    input_string += char  
  end
  
  result = first_non_repeating_char(input_string)
  if result
    $stdout.write("The first non-repeating character is: " + result + "\n")
  else
    $stdout.write("No non-repeating character\n")
  end
  