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

p list.at(2)
p list.at(4)  
p list.at(5) #Should give an error, not sure if I should make this nil or keep the error
#p list.head
#p list.tail
#p list.size
p 'finish'
