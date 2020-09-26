class ChangeColumnPurchased < ActiveRecord::Migration[6.0]
  def change
    change_column :gifts, :purchased, :boolean, :default => false
  end
end
