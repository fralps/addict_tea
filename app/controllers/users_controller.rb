class UsersController < ApplicationController
	before_action :dont_show
	before_action :authenticate_user!

def show
	@user = User.find(params[:id])	
end

	def dont_show
		@user = User.find(params[:id])
		if (@user != current_user) 
			redirect_to root_path flash[:alert] = "Information confidentielle" 
		end
	end
end
