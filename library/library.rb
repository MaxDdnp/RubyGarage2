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

  def most_popular_book
    popular_book = @orders.group_by(&:book).values.max_by(&:size).first.book
    puts "\nMost popular book: #{popular_book}"
  end

  def most_active_readers
    hash = @orders.inject(Hash.new(0)) do |count, order|
      count[order.reader.name] += 1
      count
    end
    most_active_reader = hash.max_by { |key, value| value }.first
    puts "\nMost active reader: #{most_active_reader}"
  end

  def people_ordered_three_most_popular_book
      books = {}
      @h = @orders.inject(Hash.new(0)) do |count, order|
        count[order.book.title] += 1 
        count
      end
      @h.max_by { |key, value| books[key] = value }
      3.times { |i| puts "#{i+1}. Popular book: #{books.keys[i]}, have #{books.values[i]} reader(s);\n"}
  end

  def save
    File.open('lib.yaml', 'w') { |f| f.write(self.to_yaml) }
  end

  def self.load
    YAML.load(File.open('lib.yaml', 'r').read)
  end


end
