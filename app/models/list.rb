class List < ActiveRecord::Base
 belongs_to :item
 has_many :items, :dependent => :delete_all  
end
