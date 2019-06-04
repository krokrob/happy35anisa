class CreateGifts < ActiveRecord::Migration[5.2]
  def change
    create_table :gifts do |t|
      t.string :video
      t.string :photo
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
