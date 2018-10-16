require "application_system_test_case"

class DamageResistancesTest < ApplicationSystemTestCase
  setup do
    @damage_resistance = damage_resistances(:one)
  end

  test "visiting the index" do
    visit damage_resistances_url
    assert_selector "h1", text: "Damage Resistances"
  end

  test "creating a Damage resistance" do
    visit damage_resistances_url
    click_on "New Damage Resistance"

    click_on "Create Damage resistance"

    assert_text "Damage resistance was successfully created"
    click_on "Back"
  end

  test "updating a Damage resistance" do
    visit damage_resistances_url
    click_on "Edit", match: :first

    click_on "Update Damage resistance"

    assert_text "Damage resistance was successfully updated"
    click_on "Back"
  end

  test "destroying a Damage resistance" do
    visit damage_resistances_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Damage resistance was successfully destroyed"
  end
end
