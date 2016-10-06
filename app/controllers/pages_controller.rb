class PagesController < ApplicationController

  def help

  end

  def page
    @doctors = Doctor.all
  end
  
end
