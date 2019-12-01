class Medusa
  attr_reader :name, :statues

  def initialize(name)
    @name = name
    @statues = []


  end

  def stare(victim)
    victim.stoned = true
    @statues << victim
      if @statues.count > 3
        @statues[0].stoned = false
        @statues.shift
      end
  end




























end
