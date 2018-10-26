require 'test_helper'

class ConditionImmunityTest < ActiveSupport::TestCase
  setup do
    @condition_immunity = condition_immunities(:one)
  end

  test "name should be present" do
    @condition_immunity.name = ""
    assert @condition_immunity.invalid?
  end

  test "name should be unique" do
    condition_immunity = ConditionImmunity.new(name: @condition_immunity.name)
    assert condition_immunity.invalid?
  end
end
