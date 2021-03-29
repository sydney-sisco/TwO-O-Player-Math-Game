class Question

  def initialize()
    @x = rand(1..20)
    @y = rand(1..20)
  end

  attr_reader :x, :y

  def answer?(guess)
    return guess == @x + @y
  end
end
