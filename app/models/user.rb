class User < ActiveRecord::Base
 has_many :lists, :dependent => :delete_all
end
