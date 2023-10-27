require "test_helper"

class SunshineHoursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sunshine_hour = sunshine_hours(:one)
  end

  test "should get index" do
    get sunshine_hours_url
    assert_response :success
  end

  test "should get new" do
    get new_sunshine_hour_url
    assert_response :success
  end

  test "should create sunshine_hour" do
    assert_difference("SunshineHour.count") do
      post sunshine_hours_url, params: { sunshine_hour: { apr: @sunshine_hour.apr, aug: @sunshine_hour.aug, city: @sunshine_hour.city, country: @sunshine_hour.country, dec: @sunshine_hour.dec, feb: @sunshine_hour.feb, jan: @sunshine_hour.jan, jul: @sunshine_hour.jul, jun: @sunshine_hour.jun, mar: @sunshine_hour.mar, may: @sunshine_hour.may, nov: @sunshine_hour.nov, oct: @sunshine_hour.oct, ref: @sunshine_hour.ref, sep: @sunshine_hour.sep, year: @sunshine_hour.year } }
    end

    assert_redirected_to sunshine_hour_url(SunshineHour.last)
  end

  test "should show sunshine_hour" do
    get sunshine_hour_url(@sunshine_hour)
    assert_response :success
  end

  test "should get edit" do
    get edit_sunshine_hour_url(@sunshine_hour)
    assert_response :success
  end

  test "should update sunshine_hour" do
    patch sunshine_hour_url(@sunshine_hour), params: { sunshine_hour: { apr: @sunshine_hour.apr, aug: @sunshine_hour.aug, city: @sunshine_hour.city, country: @sunshine_hour.country, dec: @sunshine_hour.dec, feb: @sunshine_hour.feb, jan: @sunshine_hour.jan, jul: @sunshine_hour.jul, jun: @sunshine_hour.jun, mar: @sunshine_hour.mar, may: @sunshine_hour.may, nov: @sunshine_hour.nov, oct: @sunshine_hour.oct, ref: @sunshine_hour.ref, sep: @sunshine_hour.sep, year: @sunshine_hour.year } }
    assert_redirected_to sunshine_hour_url(@sunshine_hour)
  end

  test "should destroy sunshine_hour" do
    assert_difference("SunshineHour.count", -1) do
      delete sunshine_hour_url(@sunshine_hour)
    end

    assert_redirected_to sunshine_hours_url
  end
end
