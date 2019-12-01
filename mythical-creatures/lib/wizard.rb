class Wizard
  attr_reader :name, :bearded, :rested, :spell_count
  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @rested = true
    @cast_count = 0
  end

def bearded?
  @bearded
end

  def incantation(spell)
    return "sudo " + spell
  end

  def rested?
    @rested
  end

  def cast
    @cast_count += 1
      if @cast_count >= 3
        @rested = false
      end
    "MAGIC MISSLE!"
  end
























end
