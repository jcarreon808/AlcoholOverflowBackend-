class CreateBeers < ActiveRecord::Migration[5.1]
  def change
    create_table :beers do |t|
      t.string :name
      t.string :description
      t.integer :abv
      t.integer :ibu

      t.timestamps
    end
  end
end
