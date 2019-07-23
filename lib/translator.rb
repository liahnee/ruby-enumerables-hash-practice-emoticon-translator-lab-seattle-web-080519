# require modules here
require 'yaml'

def load_library(file_path)
  # code goes here
  #  emoticon_lib = {:get_meaning => {japanese emoticon => meaning}, :get_emoticon => {english emoticon => japanese emoticon}}
  # emoticon.yml = {:angel => ["O:)", "☜(⌒▽⌒)☞"   ], :angry => [">:(", "ヽ(ｏ`皿′ｏ)ﾉ"], :bored => [].... 

  emoticon_lib = {:get_meaning => {}, :get_emoticon => {}}
  emoticon_yml = YAML.load_file(file_path)
  emoticon_yml.each do |(meaning, value_array)|
    emoticon_lib[:get_emoticon][value_array[0]] = value_array[1]
    emoticon_lib[:get_meaning][value_array[1]] = meaning
  end
  return emoticon_lib
end


def get_japanese_emoticon(address, arg_eng_emo)
  # code goes here
  emo_hash = load_library(address)
  emo_hash[:get_emoticon].each do |(eng_emo, jap_emo)|
    if eng_emo == arg_eng_emo
      return jap_emo
    end
  end
  return "Sorry, that emoticon was not found"
end


def get_english_meaning(address, arg_jap_emo)
  # code goes here
  emo_hash = load_library(address)
  emo_hash[:get_meaning].each do |(jap_emo, meaning)|
    if jap_emo == arg_jap_emo
      return meaning
    end
  end
  return "Sorry, that emoticon was not found"  
end