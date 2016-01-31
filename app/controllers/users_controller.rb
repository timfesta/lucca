class UsersController < ApplicationController
	before_filter :authorize, only: [:show]

	def index
		render :new
	end
	
	def new
		if current_user
			redirect_to profile_path
		else
			@user = User.new
		end
	end

	def create
		if current_user
			redirect_to profile_path
		else
			user = User.new(user_params)
			if user.save
				session[:user_id] = user.id
				redirect_to profile_path
			else
				redirect_to signup_path
			end
		end	
	end

	def show
		@user = User.find(session[:user_id])
		@microposts = @user.microposts.paginate(page: params[:page])
	end

	def destroy
		@user = User.find(params[:id])
		if current_user
			@user.destroy
			session[:user_id] = nil
		else
      		redirect_to root_path
		end
		
	end

	private
		def user_params
			params.require(:user).permit(:name, :email)
		end
end
