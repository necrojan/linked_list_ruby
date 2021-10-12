require_relative './node'

class LinkList

  def initialize
    @head = nil
    @tail = nil
    @count = 1
  end

  def append(value)
    new_node = Node.new
    new_node.value = value

    if @head.nil?
      @head = @tail = new_node
      return
    end

    current = @head
    current = current.next_node while current.next_node

    @tail = current.next_node = new_node
  end

  def prepend(value)
    new_node = Node.new
    new_node.value = value

    new_node.next_node = @head

    @head = new_node
  end

  def size
    count = 1
    current = @head
    while current.next_node
      current = current.next_node
      count += 1
    end
    count
  end

  def head
    current = @head
    (0..@count).each do |item|
      return current.value if item.zero?
    end
  end

  def tail
    current = @head
    current = current.next_node while current.next_node
    current
  end

  def at(index)
    current = @head
    index.times do |_i|
      return false if current.next_node.nil?

      current = current.next_node
    end
    current
  end

  def pop
    return nil if @head.nil?

    if @head.next_node.nil?
      @head = nil
      return nil
    end

    current = @head
    previous = nil
    while current.next_node
      previous = current
      current = current.next_node
    end

    @tail = previous
    @tail.next_node = nil
    @head
  end

  def contains?(value)
    return true if @head.value == value

    current = @head

    while current.next_node
      current = current.next_node
      return true if current.value == value
    end

    false
  end

  def find(value)
    count = 0
    return nil if contains?(value) == false

    return count if @head.value == value

    current = @head

    while current.next_node
      current = current.next_node
      count += 1
      return count if current.value == value
    end
  end

  def to_s
    current = @head
    str = ''

    while current.value
      str += "(#{current.value}) -> "
      if current.next_node.nil?
        str += 'nil'
        break
      end

      current = current.next_node
    end

    str
  end
end
