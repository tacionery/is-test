class ClassroomsController < ApplicationController

  before_action :set_classroom, only: [:index]

  def index
    @classrooms = Classroom.all
  end

  def show
  end

  def new
    @classroom = Classroom.new
  end

  def create
    @classroom = Classroom.create classroom_params
    respond_with @classroom, location: -> { classroom_path(@classroom) }
  end

  def destroy
    if @classroom.destroy
      redirect_to classrooms_path
    else
    end
  end

  protected

  def classroom_params
    params.require(:classroom).permit(:students_id, :courses_id)
  end

  def set_classroom
    @classroom = Classroom.find_by(students_id: params[:students_id], courses_id: params[[:courses_id]])
  end

end
