class BubbleSort
  def initialize(input)
    @input = input
  end

  def sort
    raise Exception if invalid_input?
    return @input if skip_processing?

    sorted = false

    until sorted
      swaps = 0
      for index in 0...@input.length - 1
        next_index = index + 1
        if @input[index] > @input[next_index]
          swaps              += 1
          temp               = @input[next_index]
          @input[next_index] = @input[index]
          @input[index]      = temp
        end
      end

      sorted = (swaps == 0)
    end
    @input
  end

  private

  def invalid_input?
    @input.nil?
  end

  def skip_processing?
    @input.size <= 2
  end
end