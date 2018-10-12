module CreaturesHelper
  def creature_types
    enum_to_option(Creature.types)
  end

  def creature_sizes
    enum_to_option(Creature.sizes)
  end
end
