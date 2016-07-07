require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get dashboard" do
    get pages_dashboard_url
    assert_response :success
  end

  test "should get tickets" do
    get pages_tickets_url
    assert_response :success
  end

  test "should get knowledge_platform" do
    get pages_knowledge_platform_url
    assert_response :success
  end

  test "should get reports" do
    get pages_reports_url
    assert_response :success
  end

  test "should get contact_us" do
    get pages_contact_us_url
    assert_response :success
  end

end
