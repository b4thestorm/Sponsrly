class EventForm
include ActiveModel::Model
attr_accessor :headline, :description, :category_type, :date, :time


  def initialize(attributes = {})
    @headline = attributes[:headline]
    @description = attributes[:description]
    @category_type = attributes[:category_type]
    @date = attributes[:date]
    @time = attributes[:time]
    @sponsee = attributes[:user]
  end  



  def submit(params)
     event = Event.create(headline: @headline, description: @description, start_time: @time, event_date: @date, sponsee: @sponsee)
     Category.create(name: @category_type, event: event)
  end 
  


  def persisted?
     false
  end
end
