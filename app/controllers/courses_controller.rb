class CoursesController < ApplicationController
  respond_to :html

  before_action :set_course, only: [:show, :edit, :update, :destroy]

  def index
    @courses = Course.all
  end

  def show
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.create course_params
    respond_with @course, location: -> { courses_path }
  end

  def edit
  end

  def update
    @course.update_attributes course_params
    respond_with @course, location: -> { courses_path }
  end

  def destroy
    if @course.destroy
    end

    redirect_to course_path
  end

  protected

  def set_course
    @course = Course.find params[:id]
  end

  def course_params
    params.require(:course).permit(:name, :description, :status)
  end

end
