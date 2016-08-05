class CreateWalls < ActiveRecord::Migration
  def change
    create_table :walls do |t|
      t.string :title
      t.text :text
      t.integer :user_id,default: 0, null: false
      t.integer :read_authority,default: 0, null: false

      t.timestamps null: false
    end
  end
end
