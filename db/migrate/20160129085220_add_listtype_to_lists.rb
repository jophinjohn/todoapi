class AddListtypeToLists < ActiveRecord::Migration[5.0]
  def change
    add_column :lists, :listtype, :string
  end
end
