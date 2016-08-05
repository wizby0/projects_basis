class CreateAnswerLongs < ActiveRecord::Migration
  def change
    create_table :answer_longs do |t|
      t.references :user_id, index: true, foreign_key: true
      t.references :question_id, index: true, foreign_key: true
      t.text :answer
      t.integer :public_result

      t.timestamps null: false
    end
  end
end
