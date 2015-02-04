class Author < ActiveRecord::Base
  has_many :books

  def book_titles
    books.map{ |book| book.title }.join(", ")
  end
end
