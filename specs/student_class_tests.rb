require('minitest/autorun')
require('minitest/rg')
require_relative('../student_class.rb')


class TestStudentsClass < MiniTest::Test


def test_student_class_name
  student_class = Student.new("Marc", "e35")
  assert_equal("Marc", student_class.get_name)
end

end
