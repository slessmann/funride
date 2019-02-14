class RidesController < ApplicationController
	before_action :authenticate_user!

	def index
		@user = User.find(params[:user_id])
		@rides = @user.rides
		@created_rides = @user.created_rides

	end

	def show
		@user = User.find(params[:user_id])
		@ride = Ride.find(params[:id])
	end
	



	def new
		@user = User.find(params[:user_id])
		@ride = Ride.new
	end

	def create 
		@user = User.find(params[:user_id])
		@user.created_rides.create(ride_params)

		redirect_to user_rides_path(current_user)
	end

	def destroy 
		@user = User.find(params[:user_id])
		@ride = Ride.find(params[:id])
			if @user.id == @ride.user_id 
				@ride.destroy
			end
		redirect_to user_rides_path(current_user)
	end

	private
	def ride_params
		params.require(:ride).permit(:user_id, :name, :location, :ride_type, :image, :description, :date, :start_time, :public_ride)
	end
	




end