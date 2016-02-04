class List < ActiveRecord::Base
 belongs_to :user
 has_many :items, :dependent => :delete_all  
 validates_inclusion_of :permissions, in: %w( private viewable open ), message: "%{value} is not a valid permission"
end
