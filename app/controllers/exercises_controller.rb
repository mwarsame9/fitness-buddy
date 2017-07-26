class ExercisesController < ApplicationController
  def index
    @exercises = Exercise.all
  end

  def show
    @exercise = Exercise.find(params[:id])
  end

  def new
    @exercise = Exercise.new
  end

  def create
    @exercise = Exercise.new(exercise_params)
    if @exercise.save
    flash[:notice] = "Exercise successfully added!"
      redirect_to  exercises_path
    else
      render :new
    end
  end

  def edit
    @exercise = Exercise.find(params[:id])
  end

  def update
    @exercise= Exercise.find(params[:id])
    if @exercise.update(exercise_params)
      flash[:notice] = "Exercise successfully updated!"
      redirect_to exercises_path
    else
      render :edit
    end
  end

  def destroy
    @exercise = Exercise.find(params[:id])
    if @exercise.destroy
      flash[:notice] = "Exercise successfully removed!"
      redirect_to exercises_path
    end
  end

private
  def exercise_params
    # Use strict parameters, replace placeholder info below with your class' actual attributes
    params.require(:exercise).permit(:attribute1, :attribute2, :attribute3)
  end
end
