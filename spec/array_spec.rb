RSpec.describe Array do
    
    it 'should be able do add items' do
        expect(subject.length).to eq(0)
        subject.push('Some value')
        expect(subject.length).to eq(1)
        puts subject
        puts subject.class
    end
end