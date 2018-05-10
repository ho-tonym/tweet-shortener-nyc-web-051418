require "pry"



def word_substituter(long_string)
  dictionary = {
  "hello" => 'hi',
  "to, two, too" => '2',
  "for, four" => '4',
  'be' => 'b',
  'you' => 'u',
  "at" => "@",
  "and" => "&"
  }

  array_strings = long_string.split(" ")
    array_strings.each_with_index do |word, index|
      dictionary.each do |key, value|
        if word == key
          array_strings[index] = dictionary[key]
        end
      end
    end

puts array_strings.join(" ")

end

word_substituter("Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!")
