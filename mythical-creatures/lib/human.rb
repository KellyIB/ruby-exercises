require_relative '../lib/ogre'


class Human
  attr_accessor :name, :notices, :ogre_encounters, :knocked_out

  def initialize(name = "Jane")
    @name = name
    @ogre_encounters = 0
    @notices = false
    @knocked_out = false
  end

  def encounter_counter
    @ogre_encounters
  end

  def notices_ogre?
    if @ogre_encounters % 3 == 0
      @notices = true
    else
      @notices = false
    end
  end

  def knocked_out?
    @knocked_out
  end

















end
