class ListSerializer < ActiveModel::Serializer
  attributes :id, :listtype, :created_at , :updated_at
  has_many :items
  
end

