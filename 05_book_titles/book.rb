class Book
  def title= title
    @title = titleize title
  end

  def title
    @title
  end
end

def titleize word
  word.split.map.with_index { |item, index|
    if index == 0 || !(%w(the and over a an of to in).include? item)
      item.capitalize
    else
      item
    end
  }.join(" ")
end

