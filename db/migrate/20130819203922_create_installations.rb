class CreateInstallations < ActiveRecord::Migration
  def change
    create_table :installations do |t|
      t.string :address
      t.string :city
      t.integer :zip
      t.references :users, index: true

      t.timestamps
    end
  end
end
