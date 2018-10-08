require 'test_helper'

class StudentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get students_index_url
    assert_response :success
  end

  test "should get show" do
    get students_show_url
    assert_response :success
  end

  test "should get new" do
    get students_new_url
    assert_response :success
  end

  test "should get edit" do
    get students_edit_url
    assert_response :success
  end

  test "should get create" do
    get students_create_url
    assert_response :success
  end

  test "should get update" do
    get students_update_url
    assert_response :success
  end

  test "should get destroy" do
    get students_destroy_url
    assert_response :success
  end

end
