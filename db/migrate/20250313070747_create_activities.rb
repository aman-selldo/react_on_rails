class CreateActivities < ActiveRecord::Migration[8.0]
  def change
    create_table :activities do |t|
      t.references :destination, null: false, foreign_key: true
      t.string :name
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
