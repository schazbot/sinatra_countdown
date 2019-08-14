class Board 
  attr_accessor :letter_1, :letter_2, :letter_3, :letter_4, :letter_5, :letter_6, :letter_7

  @@all = []

  def initialize(letter_1, letter_2, letter_3, letter_4, letter_5, letter_6, letter_7)
    @letter_1 = letter_1
    @letter_2 = letter_2
    @letter_3 = letter_3
    @letter_4 = letter_4
    @letter_5 = letter_5
    @letter_6 = letter_6
    @letter_7 = letter_7

    @@all << self
  end


  def self.all
    @@all
  end
end
