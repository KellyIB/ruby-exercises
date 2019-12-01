class Rabbit
  attr_reader :name

  def initialize(hash)
    @name = hash[:name]
    @num_syllables = hash[:num_syllables]
  end

  
  def name
    if @num_syllables == 2
        @name = "#{@name} " + "Rabbit"
    else
          @name

    end
  end
end
