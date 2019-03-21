class RidesController < ApplicationController
	before_action :authenticate_user!

	def index
		@user = current_user
		@rides = @user.rides
		@created_rides = @user.created_rides

	end

	def show
		@ride = Ride.find(params[:id])
		@attendance = RideUser.find_by(user_id: current_user.id, ride_id: params[:id])
	end
	
	def new
		@user = current_user
		@ride = Ride.new
	end

	def create 
		@user = current_user
		@user.created_rides.create(ride_params)

		redirect_to user_rides_path(current_user)
	end

	def edit
		@user = current_user
		@ride = Ride.find(params[:id])
	end

	def update
		@ride = Ride.find(params[:id])
		@ride.update(ride_params)

		redirect_to user_rides_path(current_user)
	end

	def destroy 
		@ride = Ride.find(params[:id])
			if current_user.id == @ride.user_id 
				@ride.destroy
			end
		redirect_to user_rides_path(current_user)
	end

	private
	def ride_params
		params.require(:ride).permit(:user_id, :name, :location, :ride_type, :image, :description, :date, :start_time, :public_ride)
	end
	




end