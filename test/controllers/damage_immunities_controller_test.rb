require 'test_helper'

class DamageImmunitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @damage_immunity = damage_immunities(:one)
  end

  test "should get index" do
    get damage_immunities_url
    assert_response :success
  end

  test "should get new" do
    get new_damage_immunity_url
    assert_response :success
  end

  test "should create damage_immunity" do
    assert_difference('DamageImmunity.count') do
      post damage_immunities_url, params: { damage_immunity: { name: "slashing" } }
    end

    assert_redirected_to damage_immunity_url(DamageImmunity.last)
  end

  test "should show damage_immunity" do
    get damage_immunity_url(@damage_immunity)
    assert_response :success
  end

  test "should get edit" do
    get edit_damage_immunity_url(@damage_immunity)
    assert_response :success
  end

  test "should update damage_immunity" do
    patch damage_immunity_url(@damage_immunity), params: { damage_immunity: { name: "crushing" } }
    assert_redirected_to damage_immunity_url(@damage_immunity)
  end

  test "should destroy damage_immunity" do
    assert_difference('DamageImmunity.count', -1) do
      delete damage_immunity_url(@damage_immunity)
    end

    assert_redirected_to damage_immunities_url
  end
end
