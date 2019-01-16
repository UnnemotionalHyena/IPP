module Lesson
  def initialize
    @observers = []
  end
  def add_observer(observer)
    @observers << observer
  end
  def delete_observer(observer)
    @observer.delete(observer)
  end
  def notify_observers
    @observers.each do |observer|
      observer.update(self)
    end
  end
end

class Professor
  include Lesson
  attr_reader :name, :class_name, :lesson_date
  attr_accessor :observers

  def initialize(name, class_name)
    super()
    @name       = name
    @class_name = class_name
  end
  def set_lesson(lesson_date)
    @lesson_date = lesson_date
    notify_observers
  end
end