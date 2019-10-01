require "application_system_test_case"

class ContactRequestsTest < ApplicationSystemTestCase
  setup do
    @contact_request = contact_requests(:one)
  end

  test "visiting the index" do
    visit contact_requests_url
    assert_selector "h1", text: "Contact Requests"
  end

  test "creating a Contact request" do
    visit contact_requests_url
    click_on "New Contact Request"

    fill_in "U email", with: @contact_request.u_email
    fill_in "U message", with: @contact_request.u_message
    fill_in "U name", with: @contact_request.u_name
    fill_in "U tel", with: @contact_request.u_tel
    click_on "Create Contact request"

    assert_text "Contact request was successfully created"
    click_on "Back"
  end

  test "updating a Contact request" do
    visit contact_requests_url
    click_on "Edit", match: :first

    fill_in "U email", with: @contact_request.u_email
    fill_in "U message", with: @contact_request.u_message
    fill_in "U name", with: @contact_request.u_name
    fill_in "U tel", with: @contact_request.u_tel
    click_on "Update Contact request"

    assert_text "Contact request was successfully updated"
    click_on "Back"
  end

  test "destroying a Contact request" do
    visit contact_requests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contact request was successfully destroyed"
  end
end
