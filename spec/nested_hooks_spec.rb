RSpec.describe 'nested hooks' do
    before(:context) do
        puts 'OUTER Before context'
    end

    before(:example) do
        puts 'OUTER Before example'
    end   

    it 'does math' do
        expect(1 + 1).to eq(2)
    end

    context 'with condition A' do
        before(:context) do
            puts 'INNER Before context'
        end
    
        before(:example) do
            puts 'INNER Before example'
        end 
        
        it 'does math again' do
            expect(1 + 21).to eq(22)
        end

        it 'again does math again' do
            expect(1 - 21).to eq(-20)
        end
    end
end