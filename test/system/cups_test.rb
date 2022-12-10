require "application_system_test_case"

class CupsTest < ApplicationSystemTestCase
  setup do
    @cup = cups(:one)
  end

  test "visiting the index" do
    visit cups_url
    assert_selector "h1", text: "Cups"
  end

  test "should create cup" do
    visit cups_url
    click_on "New cup"

    fill_in "Name", with: @cup.name
    click_on "Create Cup"

    assert_text "Cup was successfully created"
    click_on "Back"
  end

  test "should update Cup" do
    visit cup_url(@cup)
    click_on "Edit this cup", match: :first

    fill_in "Name", with: @cup.name
    click_on "Update Cup"

    assert_text "Cup was successfully updated"
    click_on "Back"
  end

  test "should destroy Cup" do
    visit cup_url(@cup)
    click_on "Destroy this cup", match: :first

    assert_text "Cup was successfully destroyed"
  end
end
