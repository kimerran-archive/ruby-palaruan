class RequestsController < ApplicationController
	def index
		@requests = Request.all
	end
	def new	
	end
	def create

		@new_request = Request.new(request_params)
		@new_request.save
		redirect_to @new_request 
	end

	def show
		@request = Request.find(params[:id])
	end

	private
		def request_params
			params.require(:request).permit(:name, :details)
		end
end
