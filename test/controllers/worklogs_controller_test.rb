require "test_helper"

class WorklogsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get worklogs_index_url
    assert_response :success
  end

  test "should get show" do
    get worklogs_show_url
    assert_response :success
  end

  test "should get edit" do
    get worklogs_edit_url
    assert_response :success
  end

  test "should get new" do
    get worklogs_new_url
    assert_response :success
  end

  test "should get update" do
    get worklogs_update_url
    assert_response :success
  end

  test "should get destroy" do
    get worklogs_destroy_url
    assert_response :success
  end
end
