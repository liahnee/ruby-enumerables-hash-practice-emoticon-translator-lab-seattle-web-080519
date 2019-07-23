# require modules here

def load_library
  # code goes here
  emoticon = YAML.load_file('emoticons.yml')
#  emoticon_lib = {:get_meaning => {japanese emoticon => meaning}, :get_emoticon => {english emoticon => japanese emoticon}}
# emoticon.yml = {:angel => ["O:)", "☜(⌒▽⌒)☞"   ], :angry => [">:(", "ヽ(ｏ`皿′ｏ)ﾉ"], :bored => []....

emoticon.each do |(meaning, value_array)|
  emoticon_lib[:get_emoticon][value_array[0]] = value_array[1]
  emoticon_lib[:get_meaning][value_array[1]] = meaning
end
return emoticon
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end