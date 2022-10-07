require "application_system_test_case"

class AppointsTest < ApplicationSystemTestCase
  setup do
    @appoint = appoints(:one)
  end

  test "visiting the index" do
    visit appoints_url
    assert_selector "h1", text: "Appoints"
  end

  test "should create appoint" do
    visit appoints_url
    click_on "New appoint"

    fill_in "Quantity", with: @appoint.quantity
    click_on "Create Appoint"

    assert_text "Appoint was successfully created"
    click_on "Back"
  end

  test "should update Appoint" do
    visit appoint_url(@appoint)
    click_on "Edit this appoint", match: :first

    fill_in "Quantity", with: @appoint.quantity
    click_on "Update Appoint"

    assert_text "Appoint was successfully updated"
    click_on "Back"
  end

  test "should destroy Appoint" do
    visit appoint_url(@appoint)
    click_on "Destroy this appoint", match: :first

    assert_text "Appoint was successfully destroyed"
  end
end
