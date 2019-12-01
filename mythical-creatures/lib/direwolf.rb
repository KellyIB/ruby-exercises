class Direwolf
  attr_reader :name, :home, :size, :starks_to_protect

  def initialize(name, home = "Beyond the Wall", size = "Massive", starks_to_protect = [])
    @name = name
    @home = home
    @size = size
    @starks_to_protect = starks_to_protect
    @hunts_white_walkers = true

  end

  def protects(stark)
    return if stark.home != @home
    return if @starks_to_protect.length >= 2
    @starks_to_protect << stark
    stark.safe = true
  end

def hunts_white_walkers?
  if @starks_to_protect.length >= 1
    @hunts_white_walkers = false
  else
    @hunts_white_walkers = true
  end
end

def leaves(stark)
  stark.safe = false
  @starks_to_protect.delete(stark)
  stark
end



end
