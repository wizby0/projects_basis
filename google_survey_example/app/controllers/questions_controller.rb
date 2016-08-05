class QuestionsController < ApplicationController

	def new
	end

	def create
		@question = Question.new(question_params)
		
		@question.save
		redirect_to @question
	end

	def edit
		@question = Question.find(params[:id])
	end

	def update
		@question = Question.find(params[:id])

		if @question.update(question_params)
			redirect_to @question
		else
			render 'edit'
		end
	end

	def show
		@question = Question.find(params[:id])
	end

	def index
		@questions = Question.all
	end

	def destroy
		@question = Question.find(params[:id])
		@question.destroy

		redirect_to questions_path
	end

	private
	def question_params
		params.require(:question).permit(:content, :selection_option, :skill_area)
	end
end
