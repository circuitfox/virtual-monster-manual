require 'test_helper'

class SpellTest < ActiveSupport::TestCase
  setup do 
    @spell = spells(:fireball)
  end

  test "name must be valid" do
    @spell.name = ""
    assert @spell.invalid?
  end

  test "description must be valid" do
    @spell.description = ""
    assert @spell.invalid?
  end

  test "dice should be valid" do
    @spell.dice = "3d6 - 4"
    assert @spell.valid?
    @spell.dice = "2d8 +"
    assert @spell.invalid?
    @spell.dice = "3"
    assert @spell.invalid?
    @spell.dice = ""
    assert @spell.invalid?
    @spell.dice = "4d6"
    assert @spell.valid?
  end

  test "level must be present" do
    @spell.level = ""
    assert @spell.invalid?
  end

  test "level must be int" do
    @spell.level = 3.9
    assert @spell.invalid?
  end

end
