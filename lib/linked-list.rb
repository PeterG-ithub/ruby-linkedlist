# frozen_string_literal: true

# linked list class implementation in ruby
class LinkedList
  attr_accessor :head, :tail

  def initialize(data = nil)
    @head = Node.new(data)
    @tail = @head
  end

  def append(value)
    new_node = Node.new(value)
    @tail.next = new_node
    @tail = new_node
  end
end
