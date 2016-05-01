class Event < ActiveRecord::Base
 belongs_to :sponsee, class_name: 'User', foreign_key: 'sponsee_id'
 has_many :sponsors, class_name: 'User'
 has_many :event_categories
 has_many :categories, through: :event_categories
 #here we get e.sponsee and also a proxy object e.sponsors =) 


end
