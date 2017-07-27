class ExercisesController < ApplicationController
  def index
    @exercises = Exercise.all
  end

  def show
    @exercise = Exercise.find(params[:id])
  end

  def new
    @workout = Workout.find(params[:workout_id])
    @exercise = Exercise.new
  end

  def create
    @workout = Workout.find(params[:workout_id])
    @exercise = Exercise.new(exercise_params)
    if @exercise.save
    flash[:notice] = "Exercise successfully added!"
      redirect_to  workout_path(@workout)
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
    @workout = Exercise.find(params[:id]).workout
    if Exercise.find(params[:id]).destroy
      flash[:notice] = "Exercise successfully removed!"
      redirect_to workout_path(@workout)
    end
  end

private
  def exercise_params
    # Use strict parameters, replace placeholder info below with your class' actual attributes
    params.require(:exercise).permit(:name, :sets, :reps, :workout_id, :user_id)
  end
end
