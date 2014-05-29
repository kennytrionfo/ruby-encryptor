# this is an encryptor project. we were given the template of encryption.
#


# creating a class
class Encryptor
  # creating a method  with the "a-z" encription that they gave us to trun each letter into a new letter and we did it with a hash cuz there's two parts, a key and a value. We have to have something search through and we have to set up a seondary value for each letter(value).
  def cipher
    { 'A' => 'N', 'B' => 'O', 'C' => 'P', 'D' => 'Q',
       'E' => 'R', 'F' => 'S', 'G' => 'T', 'H' => 'U',
        'I' => 'V', 'J' => 'W', 'K' => 'X', 'L' => 'Y',
         'M' => 'Z', 'N' => 'A', 'O' => 'B', 'P' => 'C',
          'Q' => 'D', 'R' => 'E', 'S' => 'F', 'T' => 'G',
           'U' => 'H', 'V' => 'I', 'W' => 'J', 'X' => 'K',
             'Y' => 'L', 'Z' => 'M'
    }
  end

  def encrypt(letter)
    cipher[letter.upcase]
  end

  def encrypt_string(string)
    letters = string.split('')
    results = []
      letters.each do |letter|
        encrypt(letter)
        results << encrypt(letter)
      end
  end
    results.join

#create a new method called encrypt_file
   def encrypt_file(filename)
     #open the file by passing it the name and ..
     input = File.open(filename, 'r')
     #this is a string now so
     contents = input.read
     encrypted_contents = encrypt_string(contents)
     input.close
     output = File.open(filename + '.encrypted', 'w')
     output.write(encrypted_contents)
     output.close

  end
end

#add the following to the above encrypt_file method
# going to need file open
# also write to new file.
# file close




#save each of these letters and put them into a new array called results
