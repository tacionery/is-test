class ClassroomsController < ApplicationController

  def index
    @classrooms = Classroom.all
  end

  def new
    @classroom = Classroom.new
  end

  def create
    @classroom = Classroom.create classroom_params
    respond_with @classroom, location: -> { classrooms_path }
  end

  def destroy
    if Classroom.where(id: params[:id]).destroy_all
      redirect_to classrooms_path
    else
    end
  end

  protected

  def classroom_params
    params.require(:classroom).permit(:students_id, :courses_id)
  end

end
