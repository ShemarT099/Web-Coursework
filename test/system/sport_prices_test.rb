require "application_system_test_case"

class SportPricesTest < ApplicationSystemTestCase
  setup do
    @sport_price = sport_prices(:one)
  end

  test "visiting the index" do
    visit sport_prices_url
    assert_selector "h1", text: "Sport Prices"
  end

  test "creating a Sport price" do
    visit sport_prices_url
    click_on "New Sport Price"

    fill_in "Price", with: @sport_price.price
    fill_in "Sport", with: @sport_price.sport_id
    click_on "Create Sport price"

    assert_text "Sport price was successfully created"
    click_on "Back"
  end

  test "updating a Sport price" do
    visit sport_prices_url
    click_on "Edit", match: :first

    fill_in "Price", with: @sport_price.price
    fill_in "Sport", with: @sport_price.sport_id
    click_on "Update Sport price"

    assert_text "Sport price was successfully updated"
    click_on "Back"
  end

  test "destroying a Sport price" do
    visit sport_prices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sport price was successfully destroyed"
  end
end
