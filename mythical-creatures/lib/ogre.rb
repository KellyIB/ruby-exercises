require_relative '../lib/human'

class Ogre
  attr_reader :name, :home, :encounter, :swings

  def initialize(name, home = 'Swamp')
    @name = name
    @home = home
    @swings = 0
    @encounters = 0
  end

  def encounter(human)
    human.ogre_encounters += 1
    @encounters += 1
    human.notices_ogre?
    if human.notices == true
      swing_at(human)
    end
  end

  def swing_at(human)
    @swings += 1
      if @swings % 2 == 0
        human.knocked_out = true
      end
  end

  def encounter_counter
    @encounters
  end

  def apologize(human)
    human.knocked_out = false
  end





















end
