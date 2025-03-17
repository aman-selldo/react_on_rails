class CreateDestinations < ActiveRecord::Migration[8.0]
  def change
    create_table :destinations do |t|
      t.references :trip, null: false, foreign_key: true
      t.string :location, null: false
      t.date :arrival_date, null: false
      t.string :arrival_time, null: false
      t.date :departure_date, null: false
      t.string :departure_time, null: false

      t.timestamps
    end
  end
end
