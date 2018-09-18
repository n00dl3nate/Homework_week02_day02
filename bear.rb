class Bear

  attr_reader :name , :type, :stomach


  def initialize(name, type, stomach)
  @name = name
  @type = type
  @stomach = stomach
  end

  def total_fish_eaten
    return @stomach.length
  end

  def bear_eats_fish(bear,river,fishy)
    if river.fish.length > 0
      river.fish.delete(fishy)
      @stomach << fishy
      end
    else
      return "No Fish"
  end

  def bear_loses_fish(bear,river,fishy)
    if @stomach.length > 0
      @stomach.delete(fishy)
      river.fish << fishy
    else
      return "No Fish"
    end
  end

  def roar
    return "Rawwwwwwr!"
  end







end
