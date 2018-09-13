class CreateClothes < ActiveRecord::Migration[5.2]
  def change
    create_table :clothes do |t|
      t.string :name
      t.string :category
      t.string :url

      t.timestamps
    end
  end
end
