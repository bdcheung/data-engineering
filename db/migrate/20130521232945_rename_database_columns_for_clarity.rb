class RenameDatabaseColumnsForClarity < ActiveRecord::Migration
  def change
  	rename_column :users, :purchaser_name, :name
  	rename_column :products, :item_description, :description
  	rename_column :products, :item_price, :price
  end
end
