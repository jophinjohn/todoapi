class RemoveItemFromList < ActiveRecord::Migration
  def change
    remove_reference :lists, :item, index: true, foreign_key: true
  end
end
