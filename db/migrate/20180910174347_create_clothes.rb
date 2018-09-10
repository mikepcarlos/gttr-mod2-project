class CreateClothes < ActiveRecord::Migration[5.2]
  def change
    create_table :clothes do |t|
      t.string :type
      t.integer :user_id
      t.integer :outfit_id

      t.timestamps
    end
  end
end
