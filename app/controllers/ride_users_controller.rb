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
		@ride_user_id = RideUser.where(ride_id: params[:ride_id], user_id: params[:id])
	
		@ride_user_id.destroy_all
		redirect_to user_ride_path(current_user, params[:ride_id])
		
	end





end