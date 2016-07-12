require 'test_helper'

class PagesControllerTest < ActionController::TestCase

  def setup
    @base_title = "Maintenance App"
  end

  test "should get dashboard" do
    get pages_dashboard_url
    assert_response :success
    assert_select "title", "Dashboard | #{@base_title}"
  end

  test "should get tickets" do
    get pages_tickets_url
    assert_response :success
    assert_select "title", "Tickets | #{@base_title}"
  end

  test "should get knowledge_platform" do
    get pages_knowledge_platform_url
    assert_response :success
    assert_select "title", "Knowledge_Platform | #{@base_title}"
  end

  test "should get reports" do
    get pages_reports_url
    assert_response :success
    assert_select "title", "Reports | #{@base_title}"
  end

  test "should get contact_us" do
    get pages_contact_us_url
    assert_response :success
    assert_select  "title", "Contact_Us | #{@base_title}"
  end

end
