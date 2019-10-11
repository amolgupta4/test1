class AurthorsController < ApplicationController
	def index
		@aurthors = Aurthor.all.order('created_at DESC')

	end
	def new
		@aurthor = Aurthor.new

	end
	def create
		@aurthor = Aurthor.new(aurthor_params)
		if @aurthor.save
		redirect_to @aurthor
	else
		render 'new'
	end
		
	end
	def show
		@aurthor = Aurthor.find(params[:id])
	end
	def edit
		@aurthor = Aurthor.find(params[:id])

	end
	def update
		@aurthor = Aurthor.find(params[:id])
		if @aurthor.update(aurthor_params)
			redirect_to @aurthor
		else
			render 'edit'
		end
	end
	def destroy
		@aurthor = Aurthor.find(params[:id])
		@aurthor.destroy
		redirect_to root_path

		
	end

	private

	def aurthor_params
		params.require(:aurthor).permit( :first_name, :last_name, :date_of_birth)
	end
end
