class Bear

  attr_reader :name
  attr_accessor :stomach

  def initialize(name)
    @name = name
    @stomach = []
  end

  def empty_stomach
    stomach_emptiness = @stomach.empty?
    return stomach_emptiness
  end

  def eat_fish(river)
    fish_to_be_eaten = river.fishes.sample
    @stomach << fish_to_be_eaten
    river.fishes.delete(fish_to_be_eaten)
  end

  def roar
    return "ROAR!! Wow, that was so scary!"
  end

  def count_food
    return @stomach.count
  end

end
