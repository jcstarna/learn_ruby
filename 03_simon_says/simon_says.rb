def echo echo
  echo
end

def shout shout
  shout.upcase
end

def repeat repeat, count=2
  ([repeat]*count).join(" ")
end

def start_of_word word, count
  word[0,count]
end

def first_word word
  (word.split)[0]
end

def titleize word
  word.split.map.with_index { |item, index|
    if index == 0 || !(%w(the and over).include? item)
      item.capitalize
    else
      item
    end
  }.join(" ")
end
