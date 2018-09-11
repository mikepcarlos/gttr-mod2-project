class UserClotheOutfits < ActiveRecord::Migration[5.2]
  def change
    create_table :user_clothe_outfits do |t|
      t.integer :user_clothe_id
      t.integer :outfit_id

      t.timestamps
    end
  end
end
