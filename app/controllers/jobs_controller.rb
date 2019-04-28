class JobsController < ApplicationController
	def create
		@car = Car.find(params[:car_id])
		@job = @car.jobs.create(job_params)
		redirect_to car_path(@car)
	end

	def destroy
		@car = Car.find(params[:car_id])
		@job = @car.jobs.find(params[:id])
		@job.destroy
		redirect_to car_path(@car)
	end

	private def job_params
		params.require(:job).permit(:title, :date)
	end
end
