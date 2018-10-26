require 'test_helper'

class DamageResistanceTest < ActiveSupport::TestCase
  setup do
    @damage_resistance = damage_resistances(:one)
  end

  test "name should be present" do
    @damage_resistance.name = ""
    assert @damage_resistance.invalid?
  end

  test "name should be unique" do
    damage_resistance = DamageResistance.new(name: @damage_resistance.name)
    assert damage_resistance.invalid?
  end
end
