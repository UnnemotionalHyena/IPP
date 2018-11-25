class ExternalIterator
  def initialize(array)
    @array = array
    @index = 0
  end

  def first
    @array[0]
  end

  def next
    value = @array[@index]
    @index += 1
    value
  end

  def is_done?
    @index == @array.length - 1
  end

  def current_item
    @array[@index]
  end

  def has_next?
    @index < @array.length
  end

  def previous
    value = @array[@index]
    @index -= 1
    value
  end

  def has_previous?
    @index > 0
  end

  def rewind
    @index = 0
  end
end
