class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :user, index: true
      t.references :merchant, index: true
      t.references :product, index: true
      t.integer :quantity
      t.decimal :total_cost

      t.timestamps
    end
  end
end
