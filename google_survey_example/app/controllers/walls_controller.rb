class WallsController < ApplicationController
	#before_action : set_wall, only: [:show, :edit, :destroy]
	#before_action : check_authority
	# after_action : set_wall, except
	def show
		
	end

	def new
	end

	def index
		@answer_shorts = AnswerShort.all
		@questions = Question.all
		@walls = Wall.all
	end

	def create
	#	render plain: params[:wall].inspect
	#	render Wall.new(wall_params).inspect
		@question = Question.new(params.require(:question).permit(:content, :selection_option, :skill_area))

		@question.save
		redirect_to walls_answer_list_path

	end
	def edit
	end
	def update
		 @wall = Wall.find(params[:id])
 
		  if @wall.update(wall_params)
		    redirect_to @wall
		  else
		    render 'edit'
		  end

	end
	def destroy
		@wall.destroy
		redirect_to walls_path
	end

	
	def timeline
		@walls = Wall.all
	end

	def survey
		@answer_shorts = AnswerShort.all
		@questions = Question.all
		@walls = Wall.all
	end

	def answer_list
		@answer_shorts = AnswerShort.all
		@walls = Wall.all
	end
	def question_list
		@questions = Question.all
		@walls = Wall.all
	end


	private
		def wall_params
			params.require(:wall).permit(:title, :text,:user_id,:read_authority)
		end
	private
		def set_wall
			@wall = Wall.find(params[:id]) 
		end
end
