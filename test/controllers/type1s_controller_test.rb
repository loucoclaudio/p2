require 'test_helper'

class Type1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @type1 = type1s(:one)
  end

  test "should get index" do
    get type1s_url
    assert_response :success
  end

  test "should get new" do
    get new_type1_url
    assert_response :success
  end

  test "should create type1" do
    assert_difference('Type1.count') do
      post type1s_url, params: { type1: { type: @type1.type } }
    end

    assert_redirected_to type1_url(Type1.last)
  end

  test "should show type1" do
    get type1_url(@type1)
    assert_response :success
  end

  test "should get edit" do
    get edit_type1_url(@type1)
    assert_response :success
  end

  test "should update type1" do
    patch type1_url(@type1), params: { type1: { type: @type1.type } }
    assert_redirected_to type1_url(@type1)
  end

  test "should destroy type1" do
    assert_difference('Type1.count', -1) do
      delete type1_url(@type1)
    end

    assert_redirected_to type1s_url
  end
end
