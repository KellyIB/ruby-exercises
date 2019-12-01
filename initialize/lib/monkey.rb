class Monkey
  attr_reader :name, :type, :favorite_food

  def initialize(info)
    @name = info[0]
    @type = info[1]
    @favorite_food = info[2]
  end

end
