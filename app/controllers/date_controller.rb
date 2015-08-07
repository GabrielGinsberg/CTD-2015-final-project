class DateController < ApplicationController
  def show
    @e = Event.where(date: params["date"])
    @events = @e.where(user_id: session['user_id'])
    @t = Task.where(date: params["date"])
    @tasks = @t.where(user_id: session['user_id'])
  end
end