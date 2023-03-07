RSpec.describe Hash do
    #let(:my_hash) { Hash.new } # 1. This in an alternative but subject method in RSpec will do teh same.
    
    it 'should start off empty' do
        expect(subject.length).to eq(0)
        subject[:some_key] = "Some Value" # 2. This changes actually the key in subject and that is way our test is still passing
        expect(subject.length).to eq(1)
    end

    it 'is isolated between examples' do
        expect(subject.length).to eq(0)   # 3. Here you can see that it was invoking the set and having a brand new hash
    end

end