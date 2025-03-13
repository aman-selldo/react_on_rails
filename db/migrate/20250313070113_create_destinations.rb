class CreateDestinations < ActiveRecord::Migration[8.0]
  def change
    create_table :destinations do |t|
      t.references :trip, null: false, foreign_key: true
      t.string :location
      t.date :arrival_date
      t.string :arrival_time
      t.string :
      t.date :departure_date
      t.string :departure_time

      t.timestamps
    end
  end
end
