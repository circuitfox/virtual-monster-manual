require 'test_helper'

class LanguageTest < ActiveSupport::TestCase
  setup do
    @language = languages(:one)
  end

  test "should be valid" do
    assert @language.valid?
  end

  test "name should be present" do
    @language.name = ""
    assert @language.invalid?
  end

  test "name should be unique" do
    language = Language.new(name: @language.name)
    assert language.invalid?
  end
end
