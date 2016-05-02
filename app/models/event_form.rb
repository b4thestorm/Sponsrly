class EventForm
include ActiveModel::Model
attr_accessor :description, :category_type, :date, :time


  def initialize(attributes = {})
    @description = attributes[:description]
    @category_type = attributes[:category_type]
    @date = attributes[:date]
    @time = attributes[:time]
  end  



  def submit(params)
        
    self.description = @description
    self.category_type = @category_type
    self.date = @date
    self.time  = @time
   
  end 
  


  def persisted?
     false
  end
end
