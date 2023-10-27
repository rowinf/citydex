require "application_system_test_case"

class SunshineHoursTest < ApplicationSystemTestCase
  setup do
    @sunshine_hour = sunshine_hours(:one)
  end

  test "visiting the index" do
    visit sunshine_hours_url
    assert_selector "h1", text: "Sunshine hours"
  end

  test "should create sunshine hour" do
    visit sunshine_hours_url
    click_on "New sunshine hour"

    fill_in "Apr", with: @sunshine_hour.apr
    fill_in "Aug", with: @sunshine_hour.aug
    fill_in "City", with: @sunshine_hour.city
    fill_in "Country", with: @sunshine_hour.country
    fill_in "Dec", with: @sunshine_hour.dec
    fill_in "Feb", with: @sunshine_hour.feb
    fill_in "Jan", with: @sunshine_hour.jan
    fill_in "Jul", with: @sunshine_hour.jul
    fill_in "Jun", with: @sunshine_hour.jun
    fill_in "Mar", with: @sunshine_hour.mar
    fill_in "May", with: @sunshine_hour.may
    fill_in "Nov", with: @sunshine_hour.nov
    fill_in "Oct", with: @sunshine_hour.oct
    fill_in "Ref", with: @sunshine_hour.ref
    fill_in "Sep", with: @sunshine_hour.sep
    fill_in "Year", with: @sunshine_hour.year
    click_on "Create Sunshine hour"

    assert_text "Sunshine hour was successfully created"
    click_on "Back"
  end

  test "should update Sunshine hour" do
    visit sunshine_hour_url(@sunshine_hour)
    click_on "Edit this sunshine hour", match: :first

    fill_in "Apr", with: @sunshine_hour.apr
    fill_in "Aug", with: @sunshine_hour.aug
    fill_in "City", with: @sunshine_hour.city
    fill_in "Country", with: @sunshine_hour.country
    fill_in "Dec", with: @sunshine_hour.dec
    fill_in "Feb", with: @sunshine_hour.feb
    fill_in "Jan", with: @sunshine_hour.jan
    fill_in "Jul", with: @sunshine_hour.jul
    fill_in "Jun", with: @sunshine_hour.jun
    fill_in "Mar", with: @sunshine_hour.mar
    fill_in "May", with: @sunshine_hour.may
    fill_in "Nov", with: @sunshine_hour.nov
    fill_in "Oct", with: @sunshine_hour.oct
    fill_in "Ref", with: @sunshine_hour.ref
    fill_in "Sep", with: @sunshine_hour.sep
    fill_in "Year", with: @sunshine_hour.year
    click_on "Update Sunshine hour"

    assert_text "Sunshine hour was successfully updated"
    click_on "Back"
  end

  test "should destroy Sunshine hour" do
    visit sunshine_hour_url(@sunshine_hour)
    click_on "Destroy this sunshine hour", match: :first

    assert_text "Sunshine hour was successfully destroyed"
  end
end
