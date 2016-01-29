class CreateLists < ActiveRecord::Migration[5.0]
  def change
    create_table :lists do |t|
      t.string :type
      t.references :item, index: true, foreign_key: true

      t.timestamps
    end
  end
end
