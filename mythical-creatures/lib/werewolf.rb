class Werewolf
  attr_reader :name, :location, :hungry

  def initialize(name, location = "London")
    @name = name
    @location = location
    @human = true
    @hungry = false
  end

  def human?
    @human
  end

  def change!
    if @human == true
      @human = false
      @hungry = true
    else
      @human = true
    end
  end

  def wolf?
    if @human == false
      true
    else
      false
    end
  end





















end
