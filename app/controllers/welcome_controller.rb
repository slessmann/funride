class WelcomeController < ApplicationController
	def home
		if params[:search].nil?
			@rides = Ride.all
		else
			@rides = Ride.where("name like '%#{params[:search]}%' OR
								 ride_type like '%#{params[:search]}%'")
		end
	end

end
