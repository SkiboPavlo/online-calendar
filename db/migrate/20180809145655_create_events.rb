class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.integer :calendar_id
      t.string :title
      t.datetime :date_range
      t.datetime :start
      t.datetime :end
      t.string :color

      t.timestamps
    end
  end
end
