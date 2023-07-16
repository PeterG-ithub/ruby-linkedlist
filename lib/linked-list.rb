# frozen_string_literal: true

# linked list class implementation in ruby
class LinkedList
  attr_accessor :head, :tail

  def initialize(data = nil)
    @head = Node.new(data)
    @tail = @head
  end

  # adds a new node containing value to the END of the list
  def append(value)
    new_node = Node.new(value)
    @tail.next = new_node
    @tail = new_node
  end

  # adds a new node containing value to the start of the list
  def prepend(value)
    new_node = Node.new(value)
    new_node.next = @head
    @head = new_node
  end
end
