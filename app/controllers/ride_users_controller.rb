class RideUsersController < ApplicationController

	def index
	end
	def show
		
	end


	def create 
		if params[:user_id] == current_user.id
				r = Ride.find(params[:ride_id]) 
				current_user.rides << r
	 		else
				u = User.find(params[:user_id])
				r = Ride.find(params[:ride_id]) 
				u.rides << r	
		end
		redirect_to ride_path(r)
	end

	def destroy
		ride_user = RideUser.find(params[:id])
	
		ride_user.destroy
		redirect_to ride_path(params[:ride_id])
	end





end