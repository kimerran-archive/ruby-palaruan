class UsersController < ApplicationController
	def index
		@users = User.all
	end
	def create
		@new_user = User.new(user_params)
		@new_user.save
		redirect_to @new_user
	end
	def new
		@user = User.new
	end
	def edit
		@user = User.find(params[:id])
	end
	def show
		@user = User.find(params[:id])		

		@events = Event.where(user_id: @user.id)
	end
	def update 
		
		user = User.find(params[:id])
		#puts user
		user.name = user_params[:name]
		user.fbid = user_params[:fbid]
		user.save

		redirect_to user
	end
	def destroy
	end
	def loginform		
	end
	def login
		cur_user = User.find_by name: params[:username]
		unless cur_user.nil?
			session[:cur_user] = cur_user
			redirect_to '/'
		else
			redirect_to '/login'
		end
		#render plain: params[:username]
	end
	def logout
		session[:cur_user] = nil
		redirect_to '/'
	end
	private
		def user_params
			params.require(:user).permit(:name, :fbid, :location, :blood_type, :gender, :is_donor)
		end

end
