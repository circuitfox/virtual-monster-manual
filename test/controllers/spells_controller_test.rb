require 'test_helper'

class SpellsControllerTest < ActionDispatch::IntegrationTest
  setup do
    login_as users(:test_admin)
    @spell = spells(:fireball)
  end

  test "should get index" do
    get spells_url
    assert_response :success
  end

  test "should get new" do
    get new_spell_url
    assert_response :success
  end

  test "should create spell" do
    assert_difference('Spell.count') do
      post spells_url, params: { spell: {
        name: "Magic Missile",
        description: "Does force damage" ,
        dice: "1d4+1",
        level: 1
         } }
    end

    assert_redirected_to spell_url(Spell.last)
  end

  test "should show spell" do
    get spell_url(@spell)
    assert_response :success
  end

  test "should get edit" do
    get edit_spell_url(@spell)
    assert_response :success
  end

  test "should update spell" do
    patch spell_url(@spell), params: { spell: {name: "magic missile"  } }
    assert_redirected_to spell_url(@spell)
  end

  test "should destroy spell" do
    assert_difference('Spell.count', -1) do
      delete spell_url(@spell)
    end

    assert_redirected_to spells_url
  end
end
