require 'test_helper'

class DamageImmunityTest < ActiveSupport::TestCase
  setup do
    @damage_immunity = damage_immunities(:one)
  end

  test "name should be present" do
    @damage_immunity.name = ""
    assert @damage_immunity.invalid?
  end

  test "name should be unique" do
    damage_immunity = DamageImmunity.new(name: @damage_immunity.name)
    assert damage_immunity.invalid?
  end

end
