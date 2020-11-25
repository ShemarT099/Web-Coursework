require "application_system_test_case"

class SportsTest < ApplicationSystemTestCase
  setup do
    @sport = sports(:one)
  end

  test "visiting the index" do
    visit sports_url
    assert_selector "h1", text: "Sports"
  end

  test "creating a Sport" do
    visit sports_url
    click_on "New Sport"

    fill_in "Description", with: @sport.description
    fill_in "Image url", with: @sport.image_url
    fill_in "Sport", with: @sport.sport_id
    fill_in "Title", with: @sport.title
    click_on "Create Sport"

    assert_text "Sport was successfully created"
    click_on "Back"
  end

  test "updating a Sport" do
    visit sports_url
    click_on "Edit", match: :first

    fill_in "Description", with: @sport.description
    fill_in "Image url", with: @sport.image_url
    fill_in "Sport", with: @sport.sport_id
    fill_in "Title", with: @sport.title
    click_on "Update Sport"

    assert_text "Sport was successfully updated"
    click_on "Back"
  end

  test "destroying a Sport" do
    visit sports_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sport was successfully destroyed"
  end
end
