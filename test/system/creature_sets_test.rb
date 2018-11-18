require "application_system_test_case"

class CreatureSetsTest < ApplicationSystemTestCase
  setup do
    @creature_set = creature_sets(:one)
  end

  test "visiting the index" do
    visit creature_sets_url
    assert_selector "h1", text: "Creature Sets"
  end

  test "creating a Creature set" do
    visit creature_sets_url
    click_on "New Creature Set"

    click_on "Create Creature set"

    assert_text "Creature set was successfully created"
    click_on "Back"
  end

  test "updating a Creature set" do
    visit creature_sets_url
    click_on "Edit", match: :first

    click_on "Update Creature set"

    assert_text "Creature set was successfully updated"
    click_on "Back"
  end

  test "destroying a Creature set" do
    visit creature_sets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Creature set was successfully destroyed"
  end
end
