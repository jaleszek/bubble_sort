require 'spec_helper'

describe BubbleSort do
  subject { described_class }

  describe '.sort' do
    context 'for null input' do
      it { expect { subject.new(nil).sort }.to raise_error }
    end

    context 'for blank array input' do
      it { expect(subject.new([]).sort ).to eq([])}
    end

    context 'for single element input' do
      it { expect(subject.new([1]).sort).to eq([1]) }
    end

    context 'for not empty input array' do
      it { expect(subject.new([2,1,4,5,3,6]).sort).to eq([1,2,3,4,5,6])}
    end
  end
end
