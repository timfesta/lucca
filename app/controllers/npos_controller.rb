class NposController < ApplicationController

	def index
	end

	def new
		@npo = Npo.new
	end

	def create
		npo = Npo.new(npo_params)
		if npo.save
			redirect_to npo_path(npo)
		else
			redirect_to root_path
		end
	end

	def show
		@npo = Npo.find(params[:id])
	end

	private
		def npo_params
			params.require(:npo).permit(:name, :about)
		end
end
