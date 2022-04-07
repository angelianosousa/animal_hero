class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.string :name
      t.string :race
      t.string :species
      t.string :sex
      t.decimal :weight
      t.date :birthdate
      t.integer :situation
      t.references :ong, foreign_key: true

      t.timestamps
    end
  end
end
