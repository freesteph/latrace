describe 'Tuple' do
  let(:tuple) { Tuple.new 1, 2, 3, 4 }

  context 'when @w is 0' do
    before do
      tuple.w = 0
    end

    it 'is a vector' do
      expect(tuple).to be_a_vector
    end
  end

  context 'when @w is 1' do
    before do
      tuple.w = 1
    end

    it 'is not a vector' do
      expect(tuple).to_not be_a_vector
    end
  end
end
