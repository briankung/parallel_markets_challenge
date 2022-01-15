require "application_system_test_case"

class InvestorsTest < ApplicationSystemTestCase
  setup do
    @investor = investors(:one)
  end

  test "visiting the index" do
    visit investors_url
    assert_selector "h1", text: "Investors"
  end

  test "should create investor" do
    visit investors_url
    click_on "New investor"

    fill_in "Dob", with: @investor.dob
    fill_in "First name", with: @investor.first_name
    fill_in "Last name", with: @investor.last_name
    fill_in "Phone number", with: @investor.phone_number
    fill_in "State", with: @investor.state
    fill_in "Street address", with: @investor.street_address
    fill_in "Zip code", with: @investor.zip_code
    click_on "Create Investor"

    assert_text "Investor was successfully created"
    click_on "Back"
  end

  test "should update Investor" do
    visit investor_url(@investor)
    click_on "Edit this investor", match: :first

    fill_in "Dob", with: @investor.dob
    fill_in "First name", with: @investor.first_name
    fill_in "Last name", with: @investor.last_name
    fill_in "Phone number", with: @investor.phone_number
    fill_in "State", with: @investor.state
    fill_in "Street address", with: @investor.street_address
    fill_in "Zip code", with: @investor.zip_code
    click_on "Update Investor"

    assert_text "Investor was successfully updated"
    click_on "Back"
  end

  test "should destroy Investor" do
    visit investor_url(@investor)
    click_on "Destroy this investor", match: :first

    assert_text "Investor was successfully destroyed"
  end
end
