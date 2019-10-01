require 'test_helper'

class ContactRequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contact_request = contact_requests(:one)
  end

  test "should get index" do
    get contact_requests_url
    assert_response :success
  end

  test "should get new" do
    get new_contact_request_url
    assert_response :success
  end

  test "should create contact_request" do
    assert_difference('ContactRequest.count') do
      post contact_requests_url, params: { contact_request: { u_email: @contact_request.u_email, u_message: @contact_request.u_message, u_name: @contact_request.u_name, u_tel: @contact_request.u_tel } }
    end

    assert_redirected_to contact_request_url(ContactRequest.last)
  end

  test "should show contact_request" do
    get contact_request_url(@contact_request)
    assert_response :success
  end

  test "should get edit" do
    get edit_contact_request_url(@contact_request)
    assert_response :success
  end

  test "should update contact_request" do
    patch contact_request_url(@contact_request), params: { contact_request: { u_email: @contact_request.u_email, u_message: @contact_request.u_message, u_name: @contact_request.u_name, u_tel: @contact_request.u_tel } }
    assert_redirected_to contact_request_url(@contact_request)
  end

  test "should destroy contact_request" do
    assert_difference('ContactRequest.count', -1) do
      delete contact_request_url(@contact_request)
    end

    assert_redirected_to contact_requests_url
  end
end
