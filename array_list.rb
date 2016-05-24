require_relative 'fixed_array'

class ArrayList

  attr_reader :capacity, :size, :list

  #NB: capacity is how many items the (fixed) array can hold, size is how many items it currently contains
  def initialize(capacity=8)
    @capacity = capacity
    @size = 0
    @list = FixedArray.new(@capacity)
  end

  def grow(counter=0)
    new_array = FixedArray.new(@capacity * 2)
    until counter > @size
      temporary_item = @list.get(counter)
      new_array.set(counter, temporary_item)
      counter += 1
    end
    @capacity += 1
    @list = new_array
  end

  def add(element)
    if @capacity > @size
      @list.set(@size, element)
    else
      grow()
    end
    @list.set(@size, element)
    @size += 1
    return element
  end

  def get(index)
    if @list.get(index)
      return @list.get(index)
    else
      raise IndexError
    end
  end

  def set(index, element)
    if @list.get(index)
      @list.set(index, element)
      return element
    else
      raise IndexError
    end
  end

  # O is n
  def length
    to_check = 0
    if to_check > @capacity
      if @list.get(to_check)
        @size += 1
      end
      to_check += 1
    end
    return @size
  end

  def insert(index, element)
    if @list.get(index)
      grow()
      counter = index
      until counter > @capacity
        temporary_item = @list.get(counter)
        @list.set(counter, element)
        counter += 1
        element = temporary_item
      end
    else
      raise IndexError
    end
  end

end
