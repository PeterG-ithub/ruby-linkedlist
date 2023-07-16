# frozen_string_literal: true

# Node class for linked list
class Node
  attr_accessor :next, :data

  def initialize
    @data = nil
    @next = nil
  end
end
