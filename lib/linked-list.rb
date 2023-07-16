# frozen_string_literal: true

# linked list class implementation in ruby
class LinkedList
  attr_accessor :head, :tail, :size

  def initialize(data = nil)
    @head = Node.new(data)
    @tail = @head
    @size = 1
  end

  # adds a new node containing value to the END of the list
  def append(value)
    new_node = Node.new(value)
    @tail.next = new_node
    @tail = new_node
    @size += 1
  end

  # adds a new node containing value to the start of the list
  def prepend(value)
    new_node = Node.new(value)
    new_node.next = @head
    @head = new_node
    @size += 1
  end

  #  returns the node at the given index, head index is at 0
  def at(index)
    current_node = @head
    index.times do
      current_node = current_node.next
    end
    current_node
  end
end
