require 'test_helper'

class BasketsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get baskets_index_url
    assert_response :success
  end

  test "should get create" do
    get baskets_create_url
    assert_response :success
  end

  test "should get update" do
    get baskets_update_url
    assert_response :success
  end

  test "should get delete" do
    get baskets_delete_url
    assert_response :success
  end

end
