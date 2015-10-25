require 'active_support/all'
require 'pry'
require_relative './author'
require_relative './book'
require_relative './reader'
require_relative './order'

class LibraryManager

  attr_accessor :books, :orders, :readers, :authors

  def initialize books = [], orders = [], readers = [], authors = []
    @books   = books
    @authors = authors
    @readers = readers
    @orders  = orders
  end

end
