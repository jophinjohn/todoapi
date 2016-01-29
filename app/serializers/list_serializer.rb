class ListSerializer < ActiveModel::Serializer
  attributes :id, :listtype, :created_at , :updated_at
end
