class CreateCheckouts < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|
      t.belongs_to :user, index: true
      t.belongs_to :book, index: true

      t.timestamps null: false
    end
  end
end
