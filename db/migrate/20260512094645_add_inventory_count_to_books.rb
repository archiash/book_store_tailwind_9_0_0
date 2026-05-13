class AddInventoryCountToBooks < ActiveRecord::Migration[8.1]
  def change
    add_column :books, :inventory_count, :integer, default: 0
  end
end
