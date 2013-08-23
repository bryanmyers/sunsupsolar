class RenameColumn < ActiveRecord::Migration
  def change
    rename_column :news, :users_id, :user_id
    remove_column :news, :author
  end
end
