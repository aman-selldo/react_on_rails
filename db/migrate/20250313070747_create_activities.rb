class CreateActivities < ActiveRecord::Migration[8.0]
  def change
    create_table :activities do |t|
      t.references :destination, null: false, foreign_key: true
      t.string :name, null: false
      t.date :date, null: false
      t.time :time, null: false

      t.timestamps
    end
  end
end
