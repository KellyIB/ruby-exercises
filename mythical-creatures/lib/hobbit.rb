class Hobbit
attr_reader :name, :disposition, :age, :adult, :old, :has_ring, :is_short

  def initialize(name, disposition = "homebody")
    @name = name
    @disposition = disposition
    @age = 0
    @adult = false
    @old = false
    @has_ring = false
    @is_short = true
  end

  def celebrate_birthday
    @age += 1
    if @age >= 33
      @adult = true
    end
    if @age >= 101
      @old = true
    end
  end

  def adult?
    @adult
  end

  def old?
    @old
  end

  def has_ring?
    if @name = "Frodo"
      @has_ring = true
    else
      @has_ring = false
    end
  end

  def is_short?
    @short
  end

  end
