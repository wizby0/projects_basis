class AnswerShortsController < ApplicationController
	
	def new
		# @answer_short = AnswerShort.new
	end
# 
	# def new_programming
	# 	@answer_short = AnswerShort.new
	# 	render "answer_shorts/new_programming"
	# end

	# def new_design
	# 	@answer_short = AnswerShort.new
	# end

	# def new_economics
	# 	@answer_short = AnswerShort.new
	# end

	# def create_programming
	# end


	def create
		@answer_short = AnswerShort.new(answer_short_params)
		
		@answer_short.save
		redirect_to @answer_short
	end

	def edit
		@answer_short = AnswerShort.find(params[:id])
	end

	def update
		@answer_short = AnswerShort.find(params[:id])

		if @answer_short.update(answer_short_params)
			redirect_to @answer_short
		else
			render 'edit'
		end
	end

	def create
		 @answer_short = AnswerShort.new(answer_short_params)
		  @answer_short.save
		  redirect_to @answer_short
	end

	def show
		@answer_short = AnswerShort.find(params[:id])
	end

	def index
		@answer_shorts = AnswerShort.all
	end

	def destroy
		@answer_short = AnswerShort.find(params[:id])
		@answer_short.destroy

		redirect_to answer_shorts_path
	end

	private
		  def answer_short_params
		    params.require(:answer_short).permit(:answer, :public_result)
		  end
	
end
