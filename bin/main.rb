# frozen_string_literal: true

require_relative '../lib/node'
require_relative '../lib/linked-list'

# Node test
node = Node.new
node.data = [*1..9]
node.next = Node.new

# append test
list = LinkedList.new(17)
list.append(%w[a b c d e f])
list.append([*1..9])

list.prepend('I am the head now')
p list.head
p list.tail
p 'finish'
