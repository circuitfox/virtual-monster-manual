require 'test_helper'

class AbilityTest < ActiveSupport::TestCase
  setup do
    @ability = abilities(:one)
  end

  test "should be valid" do
    assert @ability.valid?
  end

  test "name should be present" do
    @ability.name = ""
    assert @ability.invalid?
  end

  test "creature should be present" do
    @ability.creature = nil
    assert @ability.invalid?
  end

  test "description should be present" do
    @ability.description = ""
    assert @ability.invalid?
  end
end
