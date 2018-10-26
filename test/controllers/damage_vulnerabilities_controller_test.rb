require 'test_helper'

class DamageVulnerabilitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @damage_vulnerability = damage_vulnerabilities(:one)
  end

  test "should get index" do
    get damage_vulnerabilities_url
    assert_response :success
  end

  test "should get new" do
    get new_damage_vulnerability_url
    assert_response :success
  end

  test "should create damage_vulnerability" do
    assert_difference('DamageVulnerability.count') do
      post damage_vulnerabilities_url, params: { damage_vulnerability: { name: "pircing" } }
    end

    assert_redirected_to damage_vulnerability_url(DamageVulnerability.last)
  end

  test "should show damage_vulnerability" do
    get damage_vulnerability_url(@damage_vulnerability)
    assert_response :success
  end

  test "should get edit" do
    get edit_damage_vulnerability_url(@damage_vulnerability)
    assert_response :success
  end

  test "should update damage_vulnerability" do
    patch damage_vulnerability_url(@damage_vulnerability), params: { damage_vulnerability: { name: "crushing" } }
    assert_redirected_to damage_vulnerability_url(@damage_vulnerability)
  end

  test "should destroy damage_vulnerability" do
    assert_difference('DamageVulnerability.count', -1) do
      delete damage_vulnerability_url(@damage_vulnerability)
    end

    assert_redirected_to damage_vulnerabilities_url
  end
end
