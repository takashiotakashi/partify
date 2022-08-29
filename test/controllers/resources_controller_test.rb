require "test_helper"

class ResourcesControllerTest < ActionDispatch::IntegrationTest
  test "should get events" do
    get resources_events_url
    assert_response :success
  end
end
