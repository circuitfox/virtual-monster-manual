require "application_system_test_case"

class ConditionImmunitiesTest < ApplicationSystemTestCase
  setup do
    @condition_immunity = condition_immunities(:one)
  end

  test "visiting the index" do
    visit condition_immunities_url
    assert_selector "h1", text: "Condition Immunities"
  end

  test "creating a Condition immunity" do
    visit condition_immunities_url
    click_on "New Condition Immunity"

    click_on "Create Condition immunity"

    assert_text "Condition immunity was successfully created"
    click_on "Back"
  end

  test "updating a Condition immunity" do
    visit condition_immunities_url
    click_on "Edit", match: :first

    click_on "Update Condition immunity"

    assert_text "Condition immunity was successfully updated"
    click_on "Back"
  end

  test "destroying a Condition immunity" do
    visit condition_immunities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Condition immunity was successfully destroyed"
  end
end
