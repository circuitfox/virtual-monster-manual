require "application_system_test_case"

class CreatureActionsTest < ApplicationSystemTestCase
  setup do
    @creature_action = creature_actions(:one)
  end

  test "visiting the index" do
    visit creature_actions_url
    assert_selector "h1", text: "Creature Actions"
  end

  test "creating a Creature action" do
    visit creature_actions_url
    click_on "New Creature Action"

    click_on "Create Creature action"

    assert_text "Creature action was successfully created"
    click_on "Back"
  end

  test "updating a Creature action" do
    visit creature_actions_url
    click_on "Edit", match: :first

    click_on "Update Creature action"

    assert_text "Creature action was successfully updated"
    click_on "Back"
  end

  test "destroying a Creature action" do
    visit creature_actions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Creature action was successfully destroyed"
  end
end
