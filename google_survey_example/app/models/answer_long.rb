class AnswerLong < ActiveRecord::Base
  belongs_to :user_id
  belongs_to :question_id
end
