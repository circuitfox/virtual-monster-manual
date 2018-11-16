require 'test_helper'

class DamageResistancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    login_as users(:test_admin)
    @damage_resistance = damage_resistances(:one)
  end

  test "should get index" do
    get damage_resistances_url
    assert_response :success
  end

  test "should get new" do
    get new_damage_resistance_url
    assert_response :success
  end

  test "should create damage_resistance" do
    assert_difference('DamageResistance.count') do
      post damage_resistances_url, params: { damage_resistance: { name: "pircing" } }
    end

    assert_redirected_to damage_resistance_url(DamageResistance.last)
  end

  test "should show damage_resistance" do
    get damage_resistance_url(@damage_resistance)
    assert_response :success
  end

  test "should get edit" do
    get edit_damage_resistance_url(@damage_resistance)
    assert_response :success
  end

  test "should update damage_resistance" do
    patch damage_resistance_url(@damage_resistance), params: { damage_resistance: { name: "crushing" } }
    assert_redirected_to damage_resistance_url(@damage_resistance)
  end

  test "should destroy damage_resistance" do
    assert_difference('DamageResistance.count', -1) do
      delete damage_resistance_url(@damage_resistance)
    end

    assert_redirected_to damage_resistances_url
  end
end
