class BubbleSort

  def initialize(input_array)
    @input_array = input_array
  end

  def sort
    raise Exception if @input_array.nil?
    return @input_array if not_worth_processing?

    sorted = false

    until sorted do
      swaps  = 0

      for i in 0...(@input_array.length - 1)
        in1 = i
        in2 = i + 1
        el1 = @input_array[in1]
        el2 = @input_array[in2]

        if el1 > el2
          @input_array[in2] = el1
          @input_array[in1] = el2

          swaps += 1
        end
      end

      sorted = (swaps == 0)

    end

    @input_array

  end

  private

  def not_worth_processing?
    @input_array.size <= 1
  end
end