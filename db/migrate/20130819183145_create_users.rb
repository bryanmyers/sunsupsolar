class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :address
      t.integer; :zip
      t.string :best_time
      t.integer :e_bill
      t.integer :access
      t.string :password

      t.timestamps
    end
  end
end
