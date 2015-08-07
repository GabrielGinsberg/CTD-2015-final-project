class CalendarController < ApplicationController
  before_filter :login_required
  
  def show
    @meetings = Meeting.all
    render "show"
  end
end