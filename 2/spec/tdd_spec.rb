require 'spec_helper'

describe BubbleSort do

  describe '#sort' do
    context 'incorrect input' do
      it{ expect{ described_class.new(nil).sort! }.to raise_error }
    end

    context 'blank input' do
      it { should_equal([], []) }
    end

    context 'input with one element' do
      it { should_equal([1], [1]) }
    end

    context 'sorted' do
      context 'input with two elements' do
        it { should_equal([1,2], [1,2]) }
      end
    end

    context 'unsorted' do
      context 'input with two elements' do
        it { should_equal([2,1], [1,2]) }
      end

      context 'input with more elements' do
        context 'needs one step' do
          it { should_equal([2,1,3,5,4,6], [1,2,3,4,5,6]) }
        end

        context 'needs many steps' do
          it { should_equal([5,1,7,2,3,4,6], [1,2,3,4,5,6,7]) }
        end
      end
    end
  end
end

def should_equal(input_array, expected)
  expect(described_class.new(input_array).sort!).to eq(expected)
end