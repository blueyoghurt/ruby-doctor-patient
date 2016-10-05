require 'test_helper'

class AppointmentTimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @appointment_time = appointment_times(:one)
  end

  test "should get index" do
    get appointment_times_url
    assert_response :success
  end

  test "should get new" do
    get new_appointment_time_url
    assert_response :success
  end

  test "should create appointment_time" do
    assert_difference('AppointmentTime.count') do
      post appointment_times_url, params: { appointment_time: { time: @appointment_time.time } }
    end

    assert_redirected_to appointment_time_url(AppointmentTime.last)
  end

  test "should show appointment_time" do
    get appointment_time_url(@appointment_time)
    assert_response :success
  end

  test "should get edit" do
    get edit_appointment_time_url(@appointment_time)
    assert_response :success
  end

  test "should update appointment_time" do
    patch appointment_time_url(@appointment_time), params: { appointment_time: { time: @appointment_time.time } }
    assert_redirected_to appointment_time_url(@appointment_time)
  end

  test "should destroy appointment_time" do
    assert_difference('AppointmentTime.count', -1) do
      delete appointment_time_url(@appointment_time)
    end

    assert_redirected_to appointment_times_url
  end
end
