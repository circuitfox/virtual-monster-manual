require "application_system_test_case"

class DamageImmunitiesTest < ApplicationSystemTestCase
  setup do
    @damage_immunity = damage_immunities(:one)
  end

  test "visiting the index" do
    visit damage_immunities_url
    assert_selector "h1", text: "Damage Immunities"
  end

  test "creating a Damage immunity" do
    visit damage_immunities_url
    click_on "New Damage Immunity"

    click_on "Create Damage immunity"

    assert_text "Damage immunity was successfully created"
    click_on "Back"
  end

  test "updating a Damage immunity" do
    visit damage_immunities_url
    click_on "Edit", match: :first

    click_on "Update Damage immunity"

    assert_text "Damage immunity was successfully updated"
    click_on "Back"
  end

  test "destroying a Damage immunity" do
    visit damage_immunities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Damage immunity was successfully destroyed"
  end
end
