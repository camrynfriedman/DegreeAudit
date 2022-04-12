require 'test_helper'

class PageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get page_index_url
    assert_response :success
  end
  test "should get SignUpPage" do
    get page_SignUpPage_url
    assert_response :success
  end
end
