require 'test_helper'

class PrayersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get prayers_index_url
    assert_response :success
  end

end
