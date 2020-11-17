require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_url
    assert_response :success
    assert_select 'title', 'My Website'
    assert_select 'h1', 'My Website'
    assert_select 'p', 'Welcome to my Website'
  end

  test "should post request contact but no email" do
    post request_contact_url

    assert_response :redirect
    assert_not_empty flash[:alert]
    assert_nil flash[:notice]
  end

  test "should post request contact" do
    post request_contact_url, params:
    {name: "Matthew", email: "matthew@me.com", telephone: "1234567890", message: "Hello"}
assert_response :redirect
    assert_nil flash[:alert]
    assert_not_empty flash[:notice]
  end

end
