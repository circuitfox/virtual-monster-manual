require 'test_helper'

class ConditionImmunitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @condition_immunity = condition_immunities(:one)
  end

  test "should get index" do
    get condition_immunities_url
    assert_response :success
  end

  test "should get new" do
    get new_condition_immunity_url
    assert_response :success
  end

  test "should create condition_immunity" do
    assert_difference('ConditionImmunity.count') do
      post condition_immunities_url, params: { condition_immunity: { name: "frightened" } }
    end

    assert_redirected_to condition_immunity_url(ConditionImmunity.last)
  end

  test "should show condition_immunity" do
    get condition_immunity_url(@condition_immunity)
    assert_response :success
  end

  test "should get edit" do
    get edit_condition_immunity_url(@condition_immunity)
    assert_response :success
  end

  test "should update condition_immunity" do
    patch condition_immunity_url(@condition_immunity), params: { condition_immunity: { name: "exhaustion" } }
    assert_redirected_to condition_immunity_url(@condition_immunity)
  end

  test "should destroy condition_immunity" do
    assert_difference('ConditionImmunity.count', -1) do
      delete condition_immunity_url(@condition_immunity)
    end

    assert_redirected_to condition_immunities_url
  end
end
