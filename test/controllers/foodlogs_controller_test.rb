require 'test_helper'

class FoodlogsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get foodlogs_index_url
    assert_response :success
  end

  test "should get new" do
    get foodlogs_new_url
    assert_response :success
  end

  test "should get show" do
    get foodlogs_show_url
    assert_response :success
  end

  test "should get edit" do
    get foodlogs_edit_url
    assert_response :success
  end

  test "should get update" do
    get foodlogs_update_url
    assert_response :success
  end

  test "should get destroy" do
    get foodlogs_destroy_url
    assert_response :success
  end

end
