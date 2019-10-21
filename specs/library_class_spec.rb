require('minitest/autorun')
require('minitest/rg')
require_relative('../library_class.rb')

class TestLibraryClass < MiniTest::Test



def test_get_book
  books_list = ["book1","book2","book3"]
  library_class = Library.new(books_list)
  result = library_class.get_book(1)
  assert_equal("book2", result)
end









end
