class ChangeStatusColumnType < ActiveRecord::Migration[5.2]
  def change
    remove_column :calendars, :status
  end
end
