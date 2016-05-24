require_relative 'array_list'
require 'pry'

class Stack

  attr_reader :structure

  def initialize()
    @structure = ArrayList.new(10)
  end

  def push(element)
    @structure.add(element)
  end

  def pop
    top_element =@structure.size
    @structure.get(top_element)
  end

end

s = Stack.new()
s.push("stuff")
binding.pry
puts "Program over"