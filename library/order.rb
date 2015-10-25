attr_reader :book, :reader, :date

  def initialize book, reader
    @book = book
    @reader = reader
    @date = Time.now.utc
  end

  def to_s
    "Order #{@date.strftime("%d/%m/%Y at %I:%M%p")}, \"#{@book.title}\", ordered by #{@reader.name}"
  end
end
