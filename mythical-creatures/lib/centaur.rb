class Centaur
  attr_accessor :name, :breed, :cranky

  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = false
    @standing = true
    @cranky = false
    @run_and_shoot_count = 0
    @laying = false
    @rested = true
    @sick = false
  end

  def shoot
    return "NO!" if @cranky == true
    return "NO!" if @standing == false
    count_actions
    if @run_and_shoot_count >= 3
      @cranky = true
      @rested = false
    else
      @cranky = false
    end
    "Twang!!!"
  end

  def run
    return "NO!" if @cranky == true
    return "NO!" if @standing == false
    count_actions
    if @run_and_shoot_count >= 3
      @cranky = true
      @rested = false
    else
      @cranky = false
    end
   "Clop clop clop clop!!!"
  end

  def cranky?
    @cranky
  end

  def standing?
    @standing
  end

  def count_actions
    @run_and_shoot_count += 1
  end

  def sleep
    return "NO!" if @standing == true
    @rested = true
    @cranky = false
    @run_and_shoot_count = 0
  end

  def laying?
    if @standing = false
      @laying = true
    else
      @laying == false
    end
  end

  def lay_down
    @standing = false
  end

  def stand_up
    @standing = true
  end

  def drink_potion
    return if @standing == false
    return @sick == true if @rested = true
    @rested = true
    @run_and_shoot_count = 0
    @cranky = false
  end

  def rested?
    @rested
  end













end
