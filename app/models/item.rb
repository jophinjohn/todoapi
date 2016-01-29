class Item < ActiveRecord::Base
 belongs_to :user
 has_many :items, :dependent => :delete_all
end
