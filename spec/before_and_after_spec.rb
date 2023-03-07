RSpec.describe 'before and after hooks' do
    before(:context) do
        puts 'Before context'
    end
    after(:context) do
        puts 'After context'
    end

    before(:example) do
        #puts 'Before example'
    end

    after(:example) do
        puts 'After example'
    end


    it 'is just a random example' do
        expect(5 * 4).to eq(20)
        puts 'I am in the first'
    end

    it 'is just a another random example' do
        expect(5 * 3).to eq(15)
        puts 'I am in the second'
    end
end