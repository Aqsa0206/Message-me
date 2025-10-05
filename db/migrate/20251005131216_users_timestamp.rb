class UsersTimestamp < ActiveRecord::Migration[5.1]
  def change
    add_timestamps :users, null: true
  end
end
