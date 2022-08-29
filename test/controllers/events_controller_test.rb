require "test_helper"

class EventsControllerTest < ActionDispatch::IntegrationTest
  test "should get resources" do
    get events_resources_url
    assert_response :success
  end
end
