class VehiclesController < ApplicationController
	def index

	end

	def show
			@vehicle = Vehicle.find(params[:id])
	end

	def new

	end

	def create
		# render plain: params[:vehicle].inspect
		@vehicle = Vehicle.new(vehicle_params)

		@vehicle.save
		redirect_to @vehicle
	end

	private def vehicle_params
		params.require(:vehicle).permit(:year, :make, :model)
	end
end
