class WorkoutsController < ApplicationController
  def index
    @workouts = Workout.all
  end

  def show
    @workout = Workout.find(params[:id])
  end

  def new
    @workout = Workout.new
  end

  def create
    @workout = Workout.new(workout_params)
    if @workout.save
    flash[:notice] = "Workout successfully added!"
      redirect_to  workouts_path
    else
      render :new
    end
  end

  def edit
    @workout = Workout.find(params[:id])
  end

  def update
    @workout= Workout.find(params[:id])
    if @workout.update(workout_params)
      flash[:notice] = "Workout successfully updated!"
      redirect_to workouts_path
    else
      render :edit
    end
  end

  def destroy
    @workout = Workout.find(params[:id])
    if @workout.destroy
      flash[:notice] = "Workout successfully removed!"
      redirect_to workouts_path
    end
  end

private
  def workout_params
    # Use strict parameters, replace placeholder info below with your class' actual attributes
    params.require(:workout).permit(:attribute1, :attribute2, :attribute3)
  end
end
