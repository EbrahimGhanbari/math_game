class Player

  # You can change the number of lives for the game here
  LIVES = 3
  attr_reader :name, :lives

  def initialize(name)
    @name = name
    @lives = LIVES
  end

  def life_reduction
    @lives -= 1
  end

end