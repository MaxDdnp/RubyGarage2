class Book
  attr_accessor :title, :author

  def initialize author, title
    @author = author
    @title = title
  end

  def to_s
      "\"#{title}\", written by #{author.name}"
  end
end
