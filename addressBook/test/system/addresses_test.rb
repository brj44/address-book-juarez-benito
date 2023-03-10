require "application_system_test_case"

class AddressesTest < ApplicationSystemTestCase
  setup do
    @address = addresses(:one)
  end

  test "visiting the index" do
    visit addresses_url
    assert_selector "h1", text: "Addresses"
  end

  test "should create address" do
    visit addresses_url
    click_on "New address"

    fill_in "Comment", with: @address.comment
    fill_in "Country", with: @address.country
    fill_in "Firstname", with: @address.firstName
    fill_in "Lastname", with: @address.lastName
    fill_in "Middlename", with: @address.middleName
    fill_in "State", with: @address.state
    fill_in "Street", with: @address.street
    fill_in "Town", with: @address.town
    fill_in "Zipcode", with: @address.zipCode
    click_on "Create Address"

    assert_text "Address was successfully created"
    click_on "Back"
  end

  test "should update Address" do
    visit address_url(@address)
    click_on "Edit this address", match: :first

    fill_in "Comment", with: @address.comment
    fill_in "Country", with: @address.country
    fill_in "Firstname", with: @address.firstName
    fill_in "Lastname", with: @address.lastName
    fill_in "Middlename", with: @address.middleName
    fill_in "State", with: @address.state
    fill_in "Street", with: @address.street
    fill_in "Town", with: @address.town
    fill_in "Zipcode", with: @address.zipCode
    click_on "Update Address"

    assert_text "Address was successfully updated"
    click_on "Back"
  end

  test "should destroy Address" do
    visit address_url(@address)
    click_on "Destroy this address", match: :first

    assert_text "Address was successfully destroyed"
  end
end
