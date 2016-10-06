class PublicController < ApplicationController
  def index
  end

  def doctor_appointment
    @doctors = Doctor.all
  end

end
