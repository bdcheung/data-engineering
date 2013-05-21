class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :purchaser_name

      t.timestamps
    end
  end
end
