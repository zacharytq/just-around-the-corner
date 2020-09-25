class AddColumnPurchased < ActiveRecord::Migration[6.0]
  def change
    add_column :gifts, :purchased, :boolean
  end
end
