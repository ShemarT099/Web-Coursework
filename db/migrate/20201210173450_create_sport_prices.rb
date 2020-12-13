class CreateSportPrices < ActiveRecord::Migration[5.2]
  def change
    create_table :sport_prices do |t|
      t.references :sport, foreign_key: true
      t.integer :price

      t.timestamps
    end
  end
end
