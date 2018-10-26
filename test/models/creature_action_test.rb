require 'test_helper'

class CreatureActionTest < ActiveSupport::TestCase
  setup do 
    @creature_action = creature_actions(:talon)
  end

  test "creature must be valid" do
    @creature_action.creature = nil
    assert @creature_action.invalid?
  end

  test "name must be valid" do
    @creature_action.name = ""
    assert @creature_action.invalid?
  end

  test "description must be valid" do
    @creature_action.description = ""
    assert @creature_action.invalid?
  end

  test "damage_dice should be valid" do
    @creature_action.damage_dice = "3d6 - 4"
    assert @creature_action.valid?
    @creature_action.damage_dice = "2d8 +"
    assert @creature_action.invalid?
    @creature_action.damage_dice = "3"
    assert @creature_action.invalid?
    @creature_action.damage_dice = ""
    assert @creature_action.invalid?
    @creature_action.damage_dice = "4d6"
    assert @creature_action.valid?
  end

  test "range must be present" do
    @creature_action.range = ""
    assert @creature_action.invalid?
  end

  test "range must be int" do
    @creature_action.range = 3.9
    assert @creature_action.invalid?
  end

end
