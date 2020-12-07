class CreateBooks < ActiveRecord::Migration[5.2]
  def change
  Sport.where.not(title_text: ["", nil]).each do |sport|
    book.find_or_create_by(title_text: sport.title_text) do |book|
      book.anything_else
    end
  end
end
  def change
    create_table :books do |t|
      t.belongs_to :sports
      t.string :Name
      t.string :Email
      t.references :sport, foreign_key: true
      t.datetime :When
      t.integer :Tickets

      t.timestamps
    end
  end
end
