class River

  attr_reader :name, :fish

  def initialize(name, fish)
    @name = name
    @fish = fish

  end


  def fish_in_river
    return @fish.length
  end



end
