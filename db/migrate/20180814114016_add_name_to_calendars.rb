class AddNameToCalendars < ActiveRecord::Migration[5.2]
  def change
    add_column :calendars, :name, :string
  end
end
