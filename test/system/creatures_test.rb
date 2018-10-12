require "application_system_test_case"

class CreaturesTest < ApplicationSystemTestCase
  setup do
    @creature = creatures(:one)
  end

  test "visiting the index" do
    visit creatures_url
    assert_selector "h1", text: "Creatures"
  end

  test "creating a Creature" do
    visit creatures_url
    click_on "New Creature"

    click_on "Create Creature"

    assert_text "Creature was successfully created"
    click_on "Back"
  end

  test "updating a Creature" do
    visit creatures_url
    click_on "Edit", match: :first

    click_on "Update Creature"

    assert_text "Creature was successfully updated"
    click_on "Back"
  end

  test "destroying a Creature" do
    visit creatures_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Creature was successfully destroyed"
  end
end
