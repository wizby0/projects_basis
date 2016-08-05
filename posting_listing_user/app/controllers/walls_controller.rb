class WallsController < ApplicationController
	def show
		@wall = Wall.find(params[:id])
	end

	def new
	end

	def index
		@walls = Wall.all
	end

	def create
	#	render plain: params[:wall].inspect
	#	render Wall.new(wall_params).inspect
		@wall = Wall.new(wall_params)

		@wall.save
		redirect_to @wall

	end
	def edit
		@wall = Wall.find(params[:id])
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
		@wall = Wall.find(params[:id])
		@wall.destroy
		redirect_to walls_path
	end

	
	def timeline
		@walls = Wall.all
	end

	private
		def wall_params
			params.require(:wall).permit(:title, :text,:user_id,:read_authority)
		end
end
