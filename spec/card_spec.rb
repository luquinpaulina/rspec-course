class Card
    #attr_reader :rank # 2. Down I make the attr also accessor so we also can change the  rank and suit.
    #attr_reader :suit

    attr_accessor :rank
    attr_accessor :suit
    def initialize(rank,suit)
      @rank = rank
      @suit = suit 
        
    end 
end 




RSpec.describe Card do
  let(:card) { Card.new('Ace', 'Spades') } # 4. The let is another method from rspec, takes a symbol (:card) and that is variable created
  # by rspec. The block reprents what that card variable is going to equal. This is better in the case of our before example because in that one
  # we actually have to run the before every time and in this just in the first expect where card is called.


  #def card # 3. We will remove this method because it is not helping that is giving us a brand new card every time.
    #Card.new('Ace','Spades') # 2.Now this method is creating a brand new card instance, this is another way to avoid duplications
  #end


  #before do
    #@card = Card.new('Ace','Spades') # 1. This is creating a new card object every time, the before is helping to avoid doing that code again
  #end 

  it 'has a rank and that rank can change' do
    expect(card.rank).to eq('Ace')
    card.rank = 'Queen'
    expect(card.rank).to eq('Queen')
  end

  it 'has a suit' do
    expect(card.suit).to eq('Spades')
  end 

  it 'has a custom error message' do
    comparison = 'Spades'
    expect(card.suit).to(eq(comparison),"Hey, I expected #{comparison} but I got #{card.suit}") #This second parameter in expect is giving a custom error message
  end 
end



