require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get knowledge_platform" do
    get static_pages_knowledge_platform_url
    assert_response :success
  end

  test "should get reports" do
    get static_pages_reports_url
    assert_response :success
  end

  test "should get contact_us" do
    get static_pages_contact_us_url
    assert_response :success
  end

end
