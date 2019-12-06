describe 'Tuple' do
  let(:tuple) { Tuple.new 1, 2, 3, 4 }

  describe 'kind' do
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

      it 'is a point' do
        expect(tuple).to be_a_point
      end
    end
  end

  describe 'factory methods' do
    describe 'vector' do
      it 'creates a vector' do
        t = Tuple.vector(3, 4, 5)

        expect(t.x).to eq 3
        expect(t.y).to eq 4
        expect(t.z).to eq 5

        expect(t).to be_a_vector
      end
    end

    describe 'point' do
      it 'creates a point' do
        t = Tuple.point(3, 4, 5)

        expect(t.x).to eq 3
        expect(t.y).to eq 4
        expect(t.z).to eq 5

        expect(t).to be_a_point
      end
    end
  end

  describe 'operations' do
    let(:point) { Tuple.point 3, 4, 5 }
    let(:vector) { Tuple.vector 5, 6, 7 }

    context 'when a vector is added to a point' do
      it 'results in another point' do
        expect(point + vector).to eq Tuple.point(8, 10, 12)
      end
    end

    context 'when a vector is added to another vector' do
      it 'results in another vector' do
        expect(vector + vector).to eq Tuple.vector(10, 12, 14)
      end
    end
  end
end
