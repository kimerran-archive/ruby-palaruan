class StaticController < ApplicationController
	def home
		render plain: session[:cur_user]
	end
end