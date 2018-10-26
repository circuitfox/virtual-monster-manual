require 'test_helper'

class CreatureTest < ActiveSupport::TestCase
  setup do
    @creature = creatures(:zombie)
  end

  test "should be valid" do
    assert @creature.valid?
  end

  test "name must be present" do
    @creature.name = ""
    assert @creature.invalid?
  end

  test "type must be present" do
    @creature.type = ""
    assert @creature.invalid?
  end

  test "size must be present" do
    @creature.size = ""
    assert @creature.invalid?
  end

  test "alignment must be present" do
    @creature.alignment = ""
    assert @creature.invalid?
  end

  test "ac must be present" do
    @creature.ac = ""
    assert @creature.invalid?
  end

  test "ac must be int" do
    @creature.ac = 3.9
    assert @creature.invalid?
  end

  test "hp must be present" do
    @creature.hp = ""
    assert @creature.invalid?
  end

  test "hp must be int" do
    @creature.hp = 3.9
    assert @creature.invalid?
  end

  test "speed must be present" do
    @creature.speed = ""
    assert @creature.invalid?
  end

  test "speed must be int" do
    @creature.speed = 3.9
    assert @creature.invalid?
  end

  test "swim must be present" do
    @creature.swim = ""
    assert @creature.invalid?
  end

  test "swim must be int" do
    @creature.swim = 3.9
    assert @creature.invalid?
  end

  test "burrow must be present" do
    @creature.burrow = ""
    assert @creature.invalid?
  end

  test "burrow must be int" do
    @creature.burrow = 3.9
    assert @creature.invalid?
  end

  test "climb must be present" do
    @creature.climb = ""
    assert @creature.invalid?
  end

  test "climb must be int" do
    @creature.climb = 3.9
    assert @creature.invalid?
  end

  test "fly must be present" do
    @creature.fly = ""
    assert @creature.invalid?
  end

  test "fly must be int" do
    @creature.fly = 3.9
    assert @creature.invalid?
  end

  test "strength must be present" do
    @creature.strength = ""
    assert @creature.invalid?
  end

  test "strength must be int" do
    @creature.strength = 3.9
    assert @creature.invalid?
  end

  test "dexterity must be present" do
    @creature.dexterity = ""
    assert @creature.invalid?
  end

  test "dexterity must be int" do
    @creature.dexterity = 3.9
    assert @creature.invalid?
  end

  test "constitution must be present" do
    @creature.constitution = ""
    assert @creature.invalid?
  end

  test "constitution must be int" do
    @creature.constitution = 3.9
    assert @creature.invalid?
  end

  test "intellect must be present" do
    @creature.intellect = ""
    assert @creature.invalid?
  end

  test "intellect must be int" do
    @creature.intellect = 3.9
    assert @creature.invalid?
  end

  test "wisdom must be present" do
    @creature.wisdom = ""
    assert @creature.invalid?
  end

  test "wisdom must be int" do
    @creature.wisdom = 3.9
    assert @creature.invalid?
  end

  test "charisma must be present" do
    @creature.charisma = ""
    assert @creature.invalid?
  end

  test "charisma must be int" do
    @creature.charisma = 3.9
    assert @creature.invalid?
  end

  test "perception must be present" do
    @creature.perception = ""
    assert @creature.invalid?
  end

  test "perception must be int" do
    @creature.perception = 3.9
    assert @creature.invalid?
  end

  test "blindsight must be present" do
    @creature.blindsight = ""
    assert @creature.invalid?
  end

  test "blindsight must be int" do
    @creature.blindsight = 3.9
    assert @creature.invalid?
  end

  test "darkvision must be present" do
    @creature.darkvision = ""
    assert @creature.invalid?
  end

  test "darkvision must be int" do
    @creature.darkvision = 3.9
    assert @creature.invalid?
  end

  test "tremorsense must be present" do
    @creature.tremorsense = ""
    assert @creature.invalid?
  end

  test "tremorsense must be int" do
    @creature.tremorsense = 3.9
    assert @creature.invalid?
  end

  test "truesight must be present" do
    @creature.truesight = ""
    assert @creature.invalid?
  end

  test "truesight must be int" do
    @creature.truesight = 3.9
    assert @creature.invalid?
  end

  test "challenge must be present" do
    @creature.challenge = ""
    assert @creature.invalid?
  end

  test "challenge must be int" do
    @creature.challenge = 3.9
    assert @creature.invalid?
  end

  test "hp_dice should not be blank" do
    @creature.hp_dice = ""
    assert @creature.invalid?
  end

  test "hp_dice should be valid" do
    @creature.hp_dice = "3d6 - 4"
    assert @creature.valid?
    @creature.hp_dice = "2d8 +"
    assert @creature.invalid?
    @creature.hp_dice = "3"
    assert @creature.invalid?
    @creature.hp_dice = ""
    assert @creature.invalid?
    @creature.hp_dice = "4d6"
    assert @creature.valid?
  end

  test "str_saving should be int" do
    @creature.str_saving = 3.9
    assert @creature.invalid?
  end

  test "str_saving should allow nil" do
    @creature.str_saving = nil
    assert @creature.valid?
  end

  test "dex_saving should be int" do
    @creature.dex_saving = 3.9
    assert @creature.invalid?
  end

  test "dex_saving should allow nil" do
    @creature.dex_saving = nil
    assert @creature.valid?
  end

  test "con_saving should be int" do
    @creature.con_saving = 3.9
    assert @creature.invalid?
  end

  test "con_saving should allow nil" do
    @creature.con_saving = nil
    assert @creature.valid?
  end

  test "int_saving should be int" do
    @creature.int_saving = 3.9
    assert @creature.invalid?
  end

  test "int_saving should allow nil" do
    @creature.int_saving = nil
    assert @creature.valid?
  end

  test "wis_saving should be int" do
    @creature.wis_saving = 3.9
    assert @creature.invalid?
  end

  test "wis_saving should allow nil" do
    @creature.wis_saving = nil
    assert @creature.valid?
  end

  test "chr_saving should be int" do
    @creature.chr_saving = 3.9
    assert @creature.invalid?
  end

  test "chr_saving should allow nil" do
    @creature.chr_saving = nil
    assert @creature.valid?
  end


end
