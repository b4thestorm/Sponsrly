class EventsController < ApplicationController
  def new
   @sponsee = User.find(current_user)
   @event = EventForm.new
  end

  def create 
    @event = EventForm.new
    if @event.valid?
      @event.submit(params)
    end

  end 

end
