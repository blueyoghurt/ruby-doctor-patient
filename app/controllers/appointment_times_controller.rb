class AppointmentTimesController < ApplicationController
  before_action :set_appointment_time, only: [:show, :edit, :update, :destroy]


  # GET /appointment_times/new
  def new
    @appointment_time = AppointmentTime.new
  end


end
