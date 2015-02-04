class PagesController < ApplicationController
  def welcome
    @authors = Author.all
    @books = Book.all
  end
end
