class CreateOutfits < ActiveRecord::Migration[5.2]
  def change
    create_table :outfits do |t|
      t.string :name
      t.datetime :date
      t.integer :user_id

      t.timestamps
    end
  end
end
