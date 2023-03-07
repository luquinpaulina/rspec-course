RSpec.describe Array do
    subject(:sally) do
        [ 1 , 2 ]
    end 
    
    it 'has an element of 2' do
        expect(subject.length).to eq(2)
        subject.pop(1)
        expect(subject.length).to eq(1)
    end

    it 'check again the equal to 2' do
        expect(sally.length).to eq(2)
    end
end