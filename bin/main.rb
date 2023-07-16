# frozen_string_literal: true

require_relative '../lib/node'

node = Node.new
node.data = [*1..9]
node.next = Node.new
p 'finish'
