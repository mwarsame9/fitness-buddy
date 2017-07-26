class MeasurementsController < ApplicationController
  before_action :require_permission, only: :edit

  def index
    @user = User.find(params[:id])
    # @measurements = Measurement.all
  end

  def show
    @user = User.find(params[:id])
    @measurement = Measurement.find(params[:id])
  end

  def new
    @measurement = Measurement.new
  end

  def create
    @measurement = Measurement.new(measurement_params)
    if @measurement.save
    flash[:notice] = "Measurement successfully added!"
      redirect_to  measurements_path
    else
      render :new
    end
  end

  def edit
    @measurement = Measurement.find(params[:id])
  end

  def update
    @measurement= Measurement.find(params[:id])
    if @measurement.update(measurement_params)
      flash[:notice] = "Measurement successfully updated!"
      redirect_to measurements_path
    else
      render :edit
    end
  end

  def destroy
    @measurement = Measurement.find(params[:id])
    if @measurement.destroy
      flash[:notice] = "Measurement successfully removed!"
      redirect_to measurements_path
    end
  end

private
  def measurement_params
    params.require(:measurement).permit(:chest, :arms, :waist, :hips, :thighs, :calves, :body_fat, :user_id)
  end
end
