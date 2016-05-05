class EventsController < ApplicationController
before_action :set_user, only: [:new, :create]

  def new
   @event = EventForm.new
  end

  def create
    first_slice = params[:event_form].slice(:headline, :description, :category_type)
    second_slice = {:date => collect_date(params[:event_form]), :time => collect_time(params[:event_form])}
    user = {user: @sponsee}
    combined_set = first_slice.merge(second_slice).merge(user)
    @event = EventForm.new(combined_set)
    if @event.valid?
    #Things might go south here?
     @event.submit(combined_set)
     redirect_to events_path
    end

  end 
 
private 

 def set_user 
  @sponsee = User.find(current_user)
 end

end
