class AddColumnToCalendars < ActiveRecord::Migration[5.2]
  def change
    add_column :calendars, :status, :integer, default: 0
  end
end
