class RemoveQuantityFromBooks < ActiveRecord::Migration
  def change
    remove_column :books, :quantity, :integer
  end
end
