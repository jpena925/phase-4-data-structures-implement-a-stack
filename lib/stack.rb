# your code here
class Stack

    attr_reader :limit

    def initialize(limit = nil)
        @stack = []
        @limit = limit
    end

    def push(value)
        raise 'Stack Overflow' if full?
        @stack.push(value)
    end

    def pop
        @stack.pop
    end

    def peek
        @stack.last
    end

    def size
        @stack.length
    end

    def empty?
        @stack.length == 0
    end

    def full?
        @stack.length == @limit
    end

    def search(value)

        @stack.index(value) ? (size - 1) - @stack.index(value) : -1
    end


    
end