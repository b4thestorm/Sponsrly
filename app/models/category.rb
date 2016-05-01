class Category < ActiveRecord::Base
has_many :event_categories
has_many :events, through: :event_categories 
 
Type = ['Industry Event', 'Social Event', 'Talent Event' ]

end
