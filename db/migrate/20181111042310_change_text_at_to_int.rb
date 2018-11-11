class ChangeTextAtToInt < ActiveRecord::Migration[5.2]
  def change
    remove_column :notifications, :text_at, :time
    add_column :notifications, :text_at, :integer
  end
end
