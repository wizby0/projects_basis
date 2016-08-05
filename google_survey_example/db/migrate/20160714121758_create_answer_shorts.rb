class CreateAnswerShorts < ActiveRecord::Migration
  def change
    create_table :answer_shorts do |t|
      t.references :user_id, index: true, foreign_key: true
      t.references :question_id, index: true, foreign_key: true
      t.integer :answer
      t.integer :public_result

      t.timestamps null: false
    end
  end
end
