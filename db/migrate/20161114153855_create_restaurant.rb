class CreateRestaurant < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string   :name, null: false
      t.integer  :cuisine, null: false, default: 0
      t.integer  :rating, null: false, default: 0
      t.integer  :delivery_time, null: false, default: 0
      t.boolean  :is_10bis_accepted, null: false, default: false
      t.text     :address, null: false
      t.float    :lat
      t.float    :lng
      t.timestamps
    end
    add_index :restaurants, :name
    add_index :restaurants, :delivery_time
    add_index :restaurants, :is_10bis_accepted
    add_index :restaurants, :cuisine
  end
end
