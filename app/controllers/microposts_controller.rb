class MicropostsController < ApplicationController
	before_action :logged_in?

	def index
		@microposts = Micropost.all
		render :index	
	end

	def new
		if current_user
			@micropost = Micropost.new
			render :new
		else
			redirect_to login_path
		end
	end

	def create
		micropost = current_user.microposts.new(micropost_params)
		if micropost.save
			redirect_to micropost_path(micropost)
		else
			redirect_to new_micropost_path
		end
	end

	def show
		if current_user
			@micropost = Micropost.find(params[:id])
		else
			redirect_to login_path	
		end
			
	end

	def destroy
		micropost = Micropost.find(params[:id])
		if current_user.microposts.include? micropost
			micropost.destroy
			redirect_to profile_path
		else
			session[:user_id] = nil
			redirect_to login_path
		end
		redirect_to root_path
	end

	private
	def micropost_params
		params.require(:micropost).permit(:content,)
	end
end
