class Player

  def initialize name
    @name = name
    @score = 3
  end

  attr_reader :name
  attr_accessor :score

  def reduceScore
    @score = @score -1
  end

end
