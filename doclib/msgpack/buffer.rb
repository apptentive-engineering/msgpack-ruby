module MessagePack

  class Buffer

    #
    # Creates an instance of the MessagePack::Buffer.
    #
    def initialize
    end

    #
    # Makes the buffer empty
    #
    # @return nil
    #
    def clear
    end

    #
    # Returns byte size of the buffer.
    #
    # @return nil
    #
    def size
    end

    #
    # Returns _true_ if the buffer is empty.
    # This method is slightly faster than _size_.
    #
    # @return [Boolean]
    #
    def empty?
    end

    #
    # Appends the given data to the buffer.
    #
    # @param data [String]
    # @return [Integer] byte size written
    #
    def write(data)
    end

    #
    # Appends the given data to the buffer.
    #
    # @param data [String]
    # @return [Buffer] self
    #
    def <<(data)
    end

    # Consumes _n_ bytes from the head of the buffer and returns consumed data.
    # If the size of the buffer is less than _n_, it reads all of data in the buffer.
    #
    # If _n_ is 0, it does nothing and returns an empty string.
    # If the optional _buffer_ argument is given, the content of the string will be replaced with the consumed data.
    #
    # @overload read
    #
    # @overload read(n)
    #   @param n [Integer] bytes to read
    #
    # @overload read(n, buffer)
    #   @param n [Integer] bytes to read
    #   @param buffer [String] buffer to read into
    #
    # @return [String]
    #
    def read(n)
    end

    #
    # Consumes _n_ bytes from the head of the buffer and returns consumed data.
    # If the size of the buffer is less than _n_, it does nothing and raises EOFError.
    #
    # If _n_ is 0, it does nothing and returns an empty string.
    # If the optional _buffer_ argument is given, the content of the string will be replaced with the consumed data.
    #
    # @overload read_all
    #
    # @overload read_all(n)
    #   @param n [Integer] bytes to read
    #
    # @overload read_all(n, buffer)
    #   @param n [Integer] bytes to read
    #   @param buffer [String] buffer to read into
    #
    # @return [String]
    #
    def read_all
    end

    #
    # Consumes _n_ bytes from the head of the buffer.
    # If the size of the buffer is less than _n_, it skips all of data in the buffer and returns integer less than _n_.
    #
    # If _n_ is 0, it does nothing and returns _0_.
    #
    # @param n [Integer] byte size to skip
    # @return [Integer] byte size actually skipped
    #
    def skip(n)
    end

    #
    # Consumes _n_ bytes from the head of the buffer.
    # If the size of the buffer is less than _n_, it does nothing and raises EOFError.
    # If _n_ is 0, it does nothing.
    #
    # @param n [Integer] byte size to skip
    # @return [Buffer] self
    #
    def skip_all(n)
    end

    #
    # Returns all data in the buffer as a string.
    # Destructive update to the returned string does NOT effect the buffer.
    #
    # @return [String]
    #
    def to_str
    end

    #
    # Returns content of the buffer as an array of strings.
    #
    # This method is sometimes faster than to_s because the internal
    # structure of the buffer is a queue of buffer chunks.
    #
    # @return [Array] array of strings
    #
    def to_a
    end

    #
    # Writes all of data in the internal buffer into the given IO. Same as buffer.write_to(io).
    # _io_ must respond to write(data) method.
    #
    # @param io [IO]
    # @return nil
    #
    def write_to(io)
    end
  end

end