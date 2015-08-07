class DateController < ApplicationController
  def show
    @events = Event.where(date: params["date"])
    @tasks = Task.where(date: params["date"])
  end
end