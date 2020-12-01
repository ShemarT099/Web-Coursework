class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :Name
      t.string :Email
      t.references :sport, foreign_key: true
      t.datetime :When
      t.integer :Tickets

      t.timestamps
    end
  end
end
