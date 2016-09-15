class StudentsController < ApplicationController
  respond_to :html

  before_action :set_student, only: [:show, :edit, :update, :destroy]

  def index
    @students = Student.all
  end

  def show
  end

  def new
  end

  def create
    @student = Student.create students_create_params
    respond_with @student, location: -> { student_path(@student) }
  end

  def edit
  end

  def update
    @student.update_attributes students_update_params
    respond_with @student, location: -> { student_path(@student) }
  end

  def destroy
    if @student.destroy
    end

    redirect_to students_path
  end

  protected

  def set_student
    @student = Student.find params[:id]
  end

  def students_create_params
    params.require(:student).permit(:name, :register_number, :status)
  end

  def students_update_params
    params.require(:student).permit(:name, :status)
  end

end
