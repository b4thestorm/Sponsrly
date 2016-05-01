class EventForm
include ActiveModel::Model
attr_accessor :description, :category_type, :date, :time


def initialize(opts = {})
  @description = params['event_form'][description], 
  @category_type = params['event_form']['category_type'],
  @date = params['event_form'][date],
  @time = params['event_form'][time]
end  

  def submit(params)
    binding.pry
    self.description = params[:description]
    self.category_type = params[:category_type]
    self.date = params[:date]

  end 

  def persisted?
     false
  end
end
