class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :caption
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :pictures, :users
  end
end
