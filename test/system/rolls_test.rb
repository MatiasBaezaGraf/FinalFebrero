require "application_system_test_case"

class RollsTest < ApplicationSystemTestCase
  setup do
    @roll = rolls(:one)
  end

  test "visiting the index" do
    visit rolls_url
    assert_selector "h1", text: "Rolls"
  end

  test "creating a Roll" do
    visit rolls_url
    click_on "New Roll"

    fill_in "Name", with: @roll.name
    click_on "Create Roll"

    assert_text "Roll was successfully created"
    click_on "Back"
  end

  test "updating a Roll" do
    visit rolls_url
    click_on "Edit", match: :first

    fill_in "Name", with: @roll.name
    click_on "Update Roll"

    assert_text "Roll was successfully updated"
    click_on "Back"
  end

  test "destroying a Roll" do
    visit rolls_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Roll was successfully destroyed"
  end
end
