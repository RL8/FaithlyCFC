require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  
  def setup
    @base_title = "Faithly for CFC"
  end

  test "should get welcome" do
    get :welcome
    assert_response :success
    assert_select "title", "Welcome! | #{@base_title}"
  end

  test "should get feed" do
    get :feed
    assert_response :success
    assert_select "title", "News Feed | #{@base_title}"
  end

end
