require('minitest/autorun')
require('minitest/rg')
require_relative('../library_class.rb')

class TestLibraryClass < MiniTest::Test

def setup
  @books_list =
  [

    { title: "war_and_peace",
      rental_details: {
        student_name: "Yana",
        date: "10/11/20"
      }
    },

    { title: "the_pearl",
      rental_details: {
        student_name: "Marc",
        date: "20/11/20"
      }

    },

    { title: "h2g2",
      rental_details: {
        student_name: "Hitch",
        date: "14/05/20"
        }
    }
  ]
end


def test_get_book
  library_class = Library.new(@books_list)
  result = library_class.get_book(1)
  assert_equal({ title: "the_pearl",
    rental_details: {
      student_name: "Marc",
      date: "20/11/20"
    }

  }, result)
end

def test_get_book_info_by_title
  lib = Library.new(@books_list)
  result = lib.get_book_info_by_title("the_pearl")
  assert_equal({ title: "the_pearl",
    rental_details: {
      student_name: "Marc",
      date: "20/11/20"
    }
    },result)
end

def test_get_book_rental_details_by_title
  lib = Library.new(@books_list)
  result = lib.get_book_rental_details_by_title("the_pearl")
  assert_equal({
    student_name: "Marc",
    date: "20/11/20"
  }, result)
end

def test_add_book
  lib = Library.new(@books_list)
  lib.add_book("LOTR")
  assert_equal(4, @books_list.length)
end

def test_update_rental_details
  lib = Library.new(@books_list)
  lib.update_rental_details("the_pearl", "Jimothy", "31/01/22")
  assert_equal({
      student_name: "Jimothy",
      date: "31/01/22"
    }, lib.get_book_rental_details_by_title("the_pearl"))
  end






end
