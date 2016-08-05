class UsersController < ApplicationController

	def new
	end

	def create
		@user = User.new(user_params)
		
		@user.save
		redirect_to @user
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])

		if @user.update(user_params)
			redirect_to @user
		else
			render 'edit'
		end
	end

	def show
		@user = User.find(params[:id])
	end

	def index
		@users = User.all
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy

		redirect_to users_path
	end

	private
	def user_params
		params.require(:user).permit(:name, :nickname, :password)
	end
end