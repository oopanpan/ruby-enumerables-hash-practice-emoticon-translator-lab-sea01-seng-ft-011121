# require modules here
require 'yaml'
require 'pry'

def load_library(link)
  # code goes here
  code = YAML.load_file(link)
  result = {}
  code.each do |key, emoji|
    if !result[key]
      result[key] = {:english => emoji[0], :japanese => emoji[1] }
    end
  end
  #binding.pry
  result
end

def get_japanese_emoticon(link, j_emoji)
  # get the sorted yaml file
  temp_hash = load_library(link)
  
  binding.pry
  # compare input emoji to the japanese collection
  # output the english one, otherwise "Sorry, that emoticon was not found"
  
  
end

def get_english_meaning
  # code goes here
end


#puts load_library("./lib/emoticons.yml")
get_japanese_emoticon("./lib/emoticons.yml",":)")