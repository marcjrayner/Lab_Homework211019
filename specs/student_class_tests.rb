require('minitest/autorun')
require('minitest/rg')
require_relative('../student_class.rb')


class TestStudentsClass < MiniTest::Test


  def test_student_class_name
    student_class = Student.new("Marc", "e35")
    assert_equal("Marc", student_class.get_name)
  end

  def test_student_class_cohort
    student_class = Student.new("Richard", "e35")
    assert_equal("e35", student_class.get_cohort)
  end

  def test_student_class_set_name
    student_class = Student.new("Yana", "e35")
    student_class.set_name("Jim")
    assert_equal("Jim",student_class.get_name)
  end

  def test_student_class_set_cohort
    student_class = Student.new("Aresky", "e35")
    student_class.set_cohort("e36")
    assert_equal("e36",student_class.get_cohort)
  end

end
