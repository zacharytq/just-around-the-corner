class CreateGifts < ActiveRecord::Migration[6.0]
  def change
    create_table :gifts do |t|
      t.string :name
      t.string :url
      t.float :price
      t.integer :friend_id
    end
  end
end
