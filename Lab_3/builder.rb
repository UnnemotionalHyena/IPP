class Student
  attr_accessor :age, :first_name, :last_name, :lessons, :gender

  def update(professor)
    @lessons << { professor.lesson_date => { professor.class_name => professor.name } }
  end
end

class StudentBuilder
  def self.build
    builder = new
    yield(builder)
    builder.student
  end

  def initialize
    @student         = Student.new
    @student.lessons = []
  end

  def set_first_name(first_name)
    @student.first_name = first_name
  end

  def set_last_name(last_name)
    @student.last_name = last_name
  end

  def set_as_men
    @student.gender = 'm'
  end

  def set_as_women
    @student.gender = 'f'
  end

  def set_age(age)
    @student.age = age
  end

  def student
    @student
  end
end