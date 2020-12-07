class CreateSurveys < ActiveRecord::Migration[5.2]
  def change
    create_table :surveys do |t|
      t.string :name
      t.text :review
      t.integer :rate

      t.timestamps
    end
  end
end
