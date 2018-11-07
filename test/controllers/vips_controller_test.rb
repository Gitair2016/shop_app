require 'test_helper'

class VipsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get vips_new_url
    assert_response :success
  end

end
