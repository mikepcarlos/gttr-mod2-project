class CreateClothes < ActiveRecord::Migration[5.2]
  def change
    create_table :clothes do |t|
      t.string :name
      t.string :category
      t.string :color

      t.timestamps
    end
  end
end
