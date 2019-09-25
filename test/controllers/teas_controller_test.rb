require 'test_helper'

class TeasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get teas_index_url
    assert_response :success
  end

  test "should get show" do
    get teas_show_url
    assert_response :success
  end

  test "should get new" do
    get teas_new_url
    assert_response :success
  end

  test "should get create" do
    get teas_create_url
    assert_response :success
  end

  test "should get edit" do
    get teas_edit_url
    assert_response :success
  end

  test "should get update" do
    get teas_update_url
    assert_response :success
  end

  test "should get destroy" do
    get teas_destroy_url
    assert_response :success
  end

end
