# require modules here
require 'yaml'
require 'pry'

def load_library
  # code goes here
  code = YAML.load_file("emoticons.yml")
  result = {}
  code.each do |key, emoji|
    if !result[key]
      result[key] = {:english => emoji[0], :japanese => emoji[1] }
    end
  end
  #binding.pry
  result
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

puts load_library