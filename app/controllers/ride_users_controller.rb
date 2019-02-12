class RideUsersController < ApplicationController

	def index
	end


	def create 
		u = User.find(params[:user_id])
		r = Ride.find(params[:ride_id]) 
		u.rides << r
		redirect_to user_ride_path(current_user, r)
	end




end