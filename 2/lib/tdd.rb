class BubbleSort
  def initialize(input)
    @input = input
  end

  def sort!
    raise Exception if incorrect_input?
    return @input if skip_processing?

    sorted = false

    until sorted
      swaps = 0
      for i in 0...@input.length - 1

        next_index = i + 1

        if @input[i] > @input[next_index]
          swaps               += 1
          temp                = @input[i]
          @input[i]     = @input[next_index]
          @input[next_index] = temp
        end
      end

      sorted = (swaps == 0)
    end

    @input
  end

  private

  def incorrect_input?
    @input.nil?
  end

  def skip_processing?
    @input.size <= 1
  end
end