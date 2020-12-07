class CreateSports < ActiveRecord::Migration[5.2]
  def change
    create_table :sports do |t|
      t.belongs_to :books
      t.string :title
      t.text :description
      t.integer :sport_id
      t.string :image_url

      t.timestamps
    end
  end
end
