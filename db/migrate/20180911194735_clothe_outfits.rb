class ClotheOutfits < ActiveRecord::Migration[5.2]
  def change
    create_table :clothe_outfits do |t|
      t.integer :clothe_id
      t.integer :outfit_id

      t.timestamps
    end
  end
end
