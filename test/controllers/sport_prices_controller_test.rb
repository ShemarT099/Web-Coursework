require 'test_helper'

class SportPricesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sport_price = sport_prices(:one)
  end

  test "should get index" do
    get sport_prices_url
    assert_response :success
  end

  test "should get new" do
    get new_sport_price_url
    assert_response :success
  end

  test "should create sport_price" do
    assert_difference('SportPrice.count') do
      post sport_prices_url, params: { sport_price: { price: @sport_price.price, sport_id: @sport_price.sport_id } }
    end

    assert_redirected_to sport_price_url(SportPrice.last)
  end

  test "should show sport_price" do
    get sport_price_url(@sport_price)
    assert_response :success
  end

  test "should get edit" do
    get edit_sport_price_url(@sport_price)
    assert_response :success
  end

  test "should update sport_price" do
    patch sport_price_url(@sport_price), params: { sport_price: { price: @sport_price.price, sport_id: @sport_price.sport_id } }
    assert_redirected_to sport_price_url(@sport_price)
  end

  test "should destroy sport_price" do
    assert_difference('SportPrice.count', -1) do
      delete sport_price_url(@sport_price)
    end

    assert_redirected_to sport_prices_url
  end
end
