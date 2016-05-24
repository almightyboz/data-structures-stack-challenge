class FixedArray

  attr_reader :size, :data_structure

  def initialize(size)
    @size = size
    @data_structure = Array.new(@size)
  end

  def check_index!(index)
    raise IndexError if index > @size
  end

  def get(index)
    check_index!(index)
    @data_structure[index]
  end

  def set(index, element)
    check_index!(index)
    @data_structure[index] = element
    @data_structure[index]
  end

end