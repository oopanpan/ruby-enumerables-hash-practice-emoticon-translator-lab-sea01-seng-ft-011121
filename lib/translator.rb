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

def get_japanese_emoticon(link, e_emoji)
  # get the sorted yaml file
  temp_hash = load_library(link)
  
  #binding.pry
  # compare input emoji to the english collection
  # output the japanese one, otherwise "Sorry, that emoticon was not found"
  message = "Sorry, that emoticon was not found"
  temp_hash.each { |key, content|
    content.each { |language, emoji|
    #binding.pry
      if :english == language && e_emoji == emoji
        #binding.pry
        message = temp_hash[key][:japanese]
      end
    }
  }
  message
end

def get_english_meaning(link, emoji)
  # code goes here
end


#puts load_library("./lib/emoticons.yml")
#get_japanese_emoticon("./lib/emoticons.yml",":)")