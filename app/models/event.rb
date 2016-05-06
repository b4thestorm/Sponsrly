class Event < ActiveRecord::Base
 #here we get e.sponsee and also a proxy object e.sponsors =) 
 belongs_to :sponsee, class_name: 'User', foreign_key: 'sponsee_id'
 has_many :sponsors, class_name: 'User'
 has_many :event_categories
 has_many :categories, through: :event_categories

 has_attached_file :place, styles: {medium: "300x300>", thumb: "1000x100>"}, default_url: "/images/:style/missing.png"   


 validates_attachment_content_type :place, content_type: /\Aimage\/.*\Z/
 


end
