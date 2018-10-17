require "application_system_test_case"

class DamageVulnerabilitiesTest < ApplicationSystemTestCase
  setup do
    @damage_vulnerability = damage_vulnerabilities(:one)
  end

  test "visiting the index" do
    visit damage_vulnerabilities_url
    assert_selector "h1", text: "Damage Vulnerabilities"
  end

  test "creating a Damage vulnerability" do
    visit damage_vulnerabilities_url
    click_on "New Damage Vulnerability"

    click_on "Create Damage vulnerability"

    assert_text "Damage vulnerability was successfully created"
    click_on "Back"
  end

  test "updating a Damage vulnerability" do
    visit damage_vulnerabilities_url
    click_on "Edit", match: :first

    click_on "Update Damage vulnerability"

    assert_text "Damage vulnerability was successfully updated"
    click_on "Back"
  end

  test "destroying a Damage vulnerability" do
    visit damage_vulnerabilities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Damage vulnerability was successfully destroyed"
  end
end
