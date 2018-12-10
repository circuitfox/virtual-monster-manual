require 'test_helper'

class AbilitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    login_as users(:test_admin)
    @ability = abilities(:one)
    @creature = creatures(:zombie)
  end

  test "should get index" do
    get abilities_url
    assert_response :success
  end

  test "should get new" do
    get new_ability_url
    assert_response :success
  end

  test "should create ability" do
    assert_difference('Ability.count') do
      post abilities_url, params: { ability: {
        name: "Ambphibious",
        creature_id: @creature.id,
        description: "This zombie can breathe air and water"
      }}
    end

    assert_redirected_to ability_url(Ability.last)
  end

  test "should show ability" do
    get ability_url(@ability)
    assert_response :success
  end

  test "should get edit" do
    get edit_ability_url(@ability)
    assert_response :success
  end

  test "should update ability" do
    patch ability_url(@ability), params: { ability: { name: "Fortitude" } }
    assert_redirected_to ability_url(@ability)
  end

  test "should destroy ability" do
    assert_difference('Ability.count', -1) do
      delete ability_url(@ability)
    end

    assert_redirected_to abilities_url
  end
end
