def translate word
  word.split.map {|item| (transform item) + "ay"}.join " "
end

def transform item
  head= ""
  tail = ""
  item.chars.each { |ch| 
    if head.length > 0 or vowel? ch.downcase
      if tail.length > 0 and tail[-1].downcase == 'q' and ch == 'u'
        tail = tail + ch
      else
        head = head + ch
      end
    else
      tail = tail + ch
    end
  }
  head + tail
end

def vowel? char
  char == 'a' || char == 'e' || char == 'i' || char == 'o' || char == 'u'
end
