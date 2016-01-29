class RemoveTypeFromLists < ActiveRecord::Migration[5.0]
  def change
    remove_column :lists, :type, :string
  end
end
