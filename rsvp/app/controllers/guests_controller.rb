class GuestsController < ApplicationController
	def new
		@guest = Guest.new
	end
	
	def create
		@guest = Guest.create(guest_params)
		redirect_to root_path
	end

	private
	def guest_params
		params.require(:guest).permit(:name, :response, :carpool, :note)
	end

end