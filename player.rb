class Player

  def initialize(name)
    @name   = name
    @lives  = 3
  end

  attr_reader :name, :lives

  def decrement_lives
    @lives = @lives - 1
  end

  def alive?
    @lives > 0
  end
end
