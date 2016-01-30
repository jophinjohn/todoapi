class ListSerializer < ActiveModel::Serializer
  attributes :id, :listtype, :created_at , :updated_at, :user_id
  has_many :items
  
end

