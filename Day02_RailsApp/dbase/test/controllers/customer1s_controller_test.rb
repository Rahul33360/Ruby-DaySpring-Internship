require "test_helper"

class Customer1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer1 = customer1s(:one)
  end

  test "should get index" do
    get customer1s_url
    assert_response :success
  end

  test "should get new" do
    get new_customer1_url
    assert_response :success
  end

  test "should create customer1" do
    assert_difference("Customer1.count") do
      post customer1s_url, params: { customer1: { email: @customer1.email, name: @customer1.name } }
    end

    assert_redirected_to customer1_url(Customer1.last)
  end

  test "should show customer1" do
    get customer1_url(@customer1)
    assert_response :success
  end

  test "should get edit" do
    get edit_customer1_url(@customer1)
    assert_response :success
  end

  test "should update customer1" do
    patch customer1_url(@customer1), params: { customer1: { email: @customer1.email, name: @customer1.name } }
    assert_redirected_to customer1_url(@customer1)
  end

  test "should destroy customer1" do
    assert_difference("Customer1.count", -1) do
      delete customer1_url(@customer1)
    end

    assert_redirected_to customer1s_url
  end
end
