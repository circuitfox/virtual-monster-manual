require 'test_helper'

class CreatureActionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @creature_action = creature_actions(:talon)
  end

  test "should get index" do
    get creature_actions_url
    assert_response :success
  end

  test "should get new" do
    get new_creature_action_url
    assert_response :success
  end

  test "should create creature_action" do
    assert_difference('CreatureAction.count') do
      post creature_actions_url, params: { creature_action: {  } }
    end

    assert_redirected_to creature_action_url(CreatureAction.last)
  end

  test "should show creature_action" do
    get creature_action_url(@creature_action)
    assert_response :success
  end

  test "should get edit" do
    get edit_creature_action_url(@creature_action)
    assert_response :success
  end

  test "should update creature_action" do
    patch creature_action_url(@creature_action), params: { creature_action: {  } }
    assert_redirected_to creature_action_url(@creature_action)
  end

  test "should destroy creature_action" do
    assert_difference('CreatureAction.count', -1) do
      delete creature_action_url(@creature_action)
    end

    assert_redirected_to creature_actions_url
  end
end
