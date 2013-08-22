class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.string :author
      t.text :content
      t.string :image
      t.references :users, index: true

      t.timestamps
    end
  end
end
