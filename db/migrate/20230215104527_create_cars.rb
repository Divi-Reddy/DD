class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :name
      t.belongs_to :brand, null: false, foreign_key: true
      t.boolean :launched
      t.date :launch_date

      t.timestamps
    end
  end
end
