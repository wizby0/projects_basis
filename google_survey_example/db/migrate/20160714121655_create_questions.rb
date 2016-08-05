class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :content
      t.string :selection_option
      t.integer :skill_area

      t.timestamps null: false
    end
  end
end
