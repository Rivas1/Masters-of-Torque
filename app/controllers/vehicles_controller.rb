class VehiclesController < ApplicationController
	http_basic_authenticate_with name: "Christopher", password: "123", except: [:index, :show]

	def index
			@vehicles = Vehicle.all
	end

	def show
			@vehicle = Vehicle.find(params[:id])
	end

	def new
			@vehicle = Vehicle.new
	end

	def create
		# render plain: params[:vehicle].inspect
		@vehicle = Vehicle.new(vehicle_params)

		if (@vehicle.save)
			redirect_to @vehicle
		else
			render 'new'
		end
	end

	def edit
		@vehicle = Vehicle.find(params[:id])
	end

	def update
		@vehicle = Vehicle.find(params[:id])

		if (@vehicle.update(vehicle_params))
			redirect_to @vehicle
		else
			render 'edit'
		end
	end
	
	def destroy
		@Vehicle = Vehicle.find(params[:id])
		@Vehicle.destroy

		redirect_to vehicles_path
	end

	private def vehicle_params
		params.require(:vehicle).permit(:year, :make, :model)
	end
end
