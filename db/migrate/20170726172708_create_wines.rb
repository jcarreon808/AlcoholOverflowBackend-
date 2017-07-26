class CreateWines < ActiveRecord::Migration[5.1]
  def change
    create_table :wines do |t|
      t.string :name
      t.string :region
      t.string :winery
      t.string :varietal
      t.string :wine_type
      t.string :link
      t.string :image
      t.integer :rank
      t.integer :vintage
      t.integer :price

      t.timestamps
    end
  end
end
