class TasksController < ApplicationController

	def index
	end

	def new
		@npo = Npo.find_by(params[:npo_id])
		@task = Task.new
		render :new
	end

	def create
		@npo = Npo.find_by(params[:npo_id])
		@task = @npo.tasks.create(task_params)
		@task.save
		redirect_to npo_path(@npo)	
	end

	private
		def task_params
			params.require(:task).permit(:issue, :description)
		end
end
