require 'test_helper'

class PagesControllerTest < ActionController::TestCase

  def setup
    @base_title = "Maintenance App"
  end

  test "should get dashboard" do
    get :dashboard
    assert_response :success
    assert_select "title", "Dashboard | #{@base_title}"
  end

  test "should get tickets" do
    get :tickets
    assert_response :success
    assert_select "title", "Tickets | #{@base_title}"
  end

  test "should get knowledge_platform" do
    get :knowledge_platform
    assert_response :success
    assert_select "title", "Knowledge_Platform | #{@base_title}"
  end

  test "should get reports" do
    get :reports
    assert_response :success
    assert_select "title", "Reports | #{@base_title}"
  end

  test "should get contact_us" do
    get :contact_us
    assert_response :success
    assert_select  "title", "Contact_Us | #{@base_title}"
  end

end
