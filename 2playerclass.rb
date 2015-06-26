class Player
  attr_reader :name
  attr_accessor :score, :hp

  def initialize(name)
    @name = name
    @score = 0
    @hp = 3
  end

  def add_score
    @score += 1
    
  end

  def lose_hp
    @hp -= 1
  end

  def zero_hp?
    @hp == 0
  end



end