# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  answer = ""
  string.size.times do |index|
    if string[index] == "r" && string[index+1] != nil or string[index] == "R" && string[index+1] != nil
      answer << string[index + 1]
    end
  end
  answer
end

pirates_say_arrrrrrrrr("are you really learning Ruby?")
pirates_say_arrrrrrrrr("Katy Perry is on the radio!")
pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")
