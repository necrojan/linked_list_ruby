# Linked List in Ruby

A linked list in Ruby.

## How to use

```Ruby
link_list = LinkList.new
link_list.append('first_node')
link_list.append('second_node')
link_list.append('third_node')
link_list.prepend('fourth_node')
link_list.append('fifth_node')
link_list.append('tenth_node')
link_list.prepend('11th_node')

p link_list.head
p link_list.tail
p link_list.size
p link_list.at(4).value
p link_list.pop
p link_list.contains?('no node')
p link_list.find('fifth_node')
p link_list.to_s
```