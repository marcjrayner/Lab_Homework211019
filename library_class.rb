class Library

#create a class for a library that has an array of books
  # books_library = [
  #
  #   { title: "war_and_peace",
  #     rental_details: {
  #       student_name: "Yana",
  #       date: "10/11/20"
  #     }
  #   },
  #
  #   { title: "the_pearl",
  #     rental_details: {
  #       student_name: "Marc",
  #       date: "20/11/20"
  #     }
  #
  #   },
  #
  #   { title: "h2g2",
  #     rental_details: {
  #       student_name: "Hitch",
  #       date: "14/05/20"
  #       }
  #   }
  # ]


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



end
