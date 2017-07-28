class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :content
      t.integer :user_rating
      t.references :user, foreign_key: true
      t.references :wine, foreign_key: true

      t.timestamps
    end
  end
end
