class Library

#create a class for a library that has an array of books


def initialize (books_array)
  @books_array = books_array
end

  # def initialize (title, rental_details)
  #   @title = title
  #   @rental_details = rental_details
  #
  # end

#create a getter for the books

  def get_book(book_num)
    return @books_array[book_num]
  end

  def get_book_info_by_title(book_title)
    for book in @books_array
      if book_title == book[:title]
        return book
      end
    end
  end






end
