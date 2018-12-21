class VehiclesController < ApplicationController
	def index

	end

	def new

	end

	def create
		render plain: params[:vehicle].inspect
	end
end
