require('minitest/autorun')
require('minitest/rg')
require_relative('../student.rb')

class TestStudent < MiniTest::Test

  def test_student_name
    student = Student.new("Kim", "G11")
    assert_equal("Kim", student.name)
  end

  def test_student_cohort
    student = Student.new("Jeff", "E9")
    assert_equal("E9", student.cohort)
  end

  def test_set_student_name
    student = Student.new("Kim", "G11")
    student.set_name("Susan")
    assert_equal("Susan", student.name)
  end

  def test_set_student_cohort
    student = Student.new("Jeff", "E9")
    student.set_cohort("E10")
    assert_equal("E10", student.cohort)
  end

  def test_student_talk
    student = Student.new("Merry", "C12")
    assert_equal("I can talk", student.talk)
  end

  def test_student_favourite_language
    student = Student.new("Ben", "D01")
    student.favourite_language("Ruby")
    assert_equal("I love Ruby", student.favourite_language)
  end


  #student1.say_favourite_language("Ruby") -> "I love Ruby").


end
