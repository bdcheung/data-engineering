class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :item_description
      t.decimal :item_price

      t.timestamps
    end
  end
end
