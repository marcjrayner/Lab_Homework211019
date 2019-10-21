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

  def get_book_rental_details_by_title(book_title)
    for book in @books_array
      if book_title == book[:title]
        return book[:rental_details]
      end
    end
  end

  def add_book(new_book_title)
    @books_array << { title: new_book_title,
      rental_details: {
        student_name: "",
        date: ""
      }
    }
  end

  def update_rental_details(title, new_borrower, new_due_date)
    bookinfo = get_book_rental_details_by_title(title)
    bookinfo[:student_name] = new_borrower
    bookinfo[:date] = new_due_date
  end






end
