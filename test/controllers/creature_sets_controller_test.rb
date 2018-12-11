require 'test_helper'

class CreatureSetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @creature_set = creature_sets(:creature_set_one)
    @user = users(:example)
    login_as @user
  end

  test "should get index" do
    get creature_sets_url
    assert_response :success
  end

  test "should get new" do
    get new_creature_set_url
    assert_response :success
  end

  test "should create creature_set" do
    assert_difference('CreatureSet.count') do
      post creature_sets_url, params: { creature_set: {name:"Swamp Creatures", description:"Monsters for my swamp campaign"  }, creatures: [] }
    end

    assert_redirected_to creature_set_url(CreatureSet.last)
  end

  test "should show creature_set" do
    get creature_set_url(@creature_set)
    assert_response :success
  end

  test "should get edit" do
    get edit_creature_set_url(@creature_set)
    assert_response :success
  end

  test "should update creature_set" do
    patch creature_set_url(@creature_set), params: { creature_set: {name:"No more Swamp monsters"  } }
    assert_redirected_to creature_set_url(@creature_set)
  end

  test "should destroy creature_set" do
    assert_difference('CreatureSet.count', -1) do
      delete creature_set_url(@creature_set)
    end

    assert_redirected_to creature_sets_url
  end
end
