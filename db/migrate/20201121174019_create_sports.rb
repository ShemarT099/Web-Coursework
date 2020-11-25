class CreateSports < ActiveRecord::Migration[5.2]
  def change
    drop_table :sports
    create_table :sports do |t|
      t.string :title
      t.text :description
      t.integer :sport_id
      t.string :image_url

      t.timestamps
    end
  end
end
