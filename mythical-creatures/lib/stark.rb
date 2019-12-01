class Stark
  attr_accessor :name, :home, :safe, :house_words

  def initialize(name, home = "Winterfell")
    @name = name
    @home = home
    @safe = false
    @house_words = "Winter is Coming"
    # @safe_house_words = "The North Remembers"
  end

  def location
    @home
  end

  def safe?
    @safe
  end

  def house_words
    if @safe == false
      @house_words = "Winter is Coming"
    else
      @house_words = "The North Remembers"
    end
  end
end
