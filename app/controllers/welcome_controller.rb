class WelcomeController < ApplicationController
	def home
		
	end

	def show
		@ride = Ride.find(params[:ride_ide])
	end

end
