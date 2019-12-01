class Dragon
  attr_reader :name, :color, :rider, :hungry

  def initialize(name, color, rider)
  @name = name
  @color = color
  @rider = rider
  @hungry = true
  @times_dragon_eats = 0
  end

  def hungry?
    @hungry
  end

  def eat
    @times_dragon_eats += 1
    if @times_dragon_eats >= 3
      @hungry = false
    end
  end



















end
