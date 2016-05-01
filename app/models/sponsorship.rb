class Sponsorship < ActiveRecord::Base
belongs_to :user
belongs_to :sponsee, class_name: 'User', foreign_key: :sponsee_id
end
