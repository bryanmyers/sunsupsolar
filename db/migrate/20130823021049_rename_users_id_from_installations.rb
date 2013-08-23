class RenameUsersIdFromInstallations < ActiveRecord::Migration
  def change
    rename_column :installations, :users_id, :user_id
  end
end
