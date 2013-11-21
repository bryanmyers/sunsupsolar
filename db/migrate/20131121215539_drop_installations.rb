class DropInstallations < ActiveRecord::Migration
  def up
    drop_table :installations
  end

  def down
    create_table "installations", force: true do |t|
    t.string   "address"
    t.string   "city"
    t.integer  "zip"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    end

    add_index "installations", ["user_id"], name: "index_installations_on_user_id"
  end

end
