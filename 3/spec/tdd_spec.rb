require 'spec_helper'

describe BubbleSort do

  subject { described_class.new(input).sort }

  context 'invalid input' do
    let(:input) { nil }
    it { expect{ subject }.to raise_error }
  end

  context 'blank input' do
    let(:input) { [] }
    it { should_eq [] }
  end

  context 'one element input' do
    let(:input) { [1] }
    it { should_eq [1] }
  end

  context 'sorted' do
    context 'two elements input' do
      let(:input) { [1,2] }
      it { should_eq [1,2] }
    end

    context 'many elements input' do
      let(:input) { [1,2,3,4,5] }
      it { should_eq [1,2,3,4,5] }
    end
  end

  context 'unsorted' do
    context 'sortable in one step' do
      let(:input) { [2,1,3,5,4] }
      it { should_eq [1,2,3,4,5] }
    end

    context 'sortable in many steps' do
      let(:input) { [6,5,4,1,2,3] }
      it { should_eq [1,2,3,4,5,6] }
    end
  end
end

def should_eq(expectation)
  expect(subject).to eq(expectation)
end