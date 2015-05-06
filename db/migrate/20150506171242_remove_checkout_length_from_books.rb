class RemoveCheckoutLengthFromBooks < ActiveRecord::Migration
  def change
    remove_column :books, :checkout_length, :integer
  end
end
