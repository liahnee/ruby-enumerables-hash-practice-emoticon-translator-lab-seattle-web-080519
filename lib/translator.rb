# require modules here

def load_library(address)
  # code goes here
  #  emoticon_lib = {:get_meaning => {japanese emoticon => meaning}, :get_emoticon => {english emoticon => japanese emoticon}}
  # emoticon.yml = {:angel => ["O:)", "☜(⌒▽⌒)☞"   ], :angry => [">:(", "ヽ(ｏ`皿′ｏ)ﾉ"], :bored => [].... 
  
  
  emoticon_yml = YAML.load_file(address)
  emoticon_yml.each do |(meaning, value_array)|
    emoticon_lib[:get_emoticon][value_array[0]] = value_array[1]
    emoticon_lib[:get_meaning][value_array[1]] = meaning
  end
  return emoticon_lib
end

def get_japanese_emoticon(address, emoticon_eng)
  # code goes here
  emo_hash = load_library(address)
    if 
  
end

def get_english_meaning
  # code goes here
  
  
end