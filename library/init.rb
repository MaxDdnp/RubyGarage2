require './library'
require './book'
require './reader'
require './author'
require './order'

  def lib_init
    books, readers, authors, orders,  = [], [], [], []
    books << Book.new()
    readers << Reader.new()
    authors << Authow.new()
    orders << Order.new()
    al = Lib.new(book, order, reader, author)
  end

