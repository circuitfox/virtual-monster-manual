require 'test_helper'

class SkillTest < ActiveSupport::TestCase
  setup do 
    @skill = skills(:perception)
  end
  
  test "creature must be valid" do
    @skill.creature = nil
    assert @skill.invalid?
  end

  test "name must be valid" do
    @skill.name = ""
    assert @skill.invalid?
  end

  test "bonus must be present" do
    @skill.bonus = ""
    assert @skill.invalid?
  end

  test "bonus must be int" do
    @skill.bonus = 3.9
    assert @skill.invalid?
  end

end
