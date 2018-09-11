class UserClothes < ActiveRecord::Migration[5.2]
  def change
    create_table :user_clothes do |t|
      t.integer :user_id
      t.integer :clothe_id

      t.timestamps
    end
  end
end
