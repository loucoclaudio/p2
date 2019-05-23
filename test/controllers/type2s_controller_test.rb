require 'test_helper'

class Type2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @type2 = type2s(:one)
  end

  test "should get index" do
    get type2s_url
    assert_response :success
  end

  test "should get new" do
    get new_type2_url
    assert_response :success
  end

  test "should create type2" do
    assert_difference('Type2.count') do
      post type2s_url, params: { type2: { type: @type2.type } }
    end

    assert_redirected_to type2_url(Type2.last)
  end

  test "should show type2" do
    get type2_url(@type2)
    assert_response :success
  end

  test "should get edit" do
    get edit_type2_url(@type2)
    assert_response :success
  end

  test "should update type2" do
    patch type2_url(@type2), params: { type2: { type: @type2.type } }
    assert_redirected_to type2_url(@type2)
  end

  test "should destroy type2" do
    assert_difference('Type2.count', -1) do
      delete type2_url(@type2)
    end

    assert_redirected_to type2s_url
  end
end
