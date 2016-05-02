class EventsController < ApplicationController
  def new
   @sponsee = User.find(current_user)
   @event = EventForm.new
  end

  def create
    first_slice = params[:event_form].slice(:description, :category_type)
    second_slice = {:date => collect_date(params[:event_form]), :time => collect_time(params[:event_form])}
    combined_set = first_slice.merge(second_slice)
    @event = EventForm.new(combined_set)
    if @event.valid?
     @event.submit(combined_set)
     redirect_to events_path
    end

  end 
 


end
