class Unicorn
  attr_accessor :name, :color


  def initialize(name, color = "white")
    @name = name
    @color = color

  end

  def white?
    return true if color == "white"
    false
  end

  def say(message)
    "**;* #{message} **;*"
  end















end
