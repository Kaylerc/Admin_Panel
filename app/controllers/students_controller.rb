class StudentsController < ApplicationController
before_action :set_student, only: [:show, :edit, :update]

  def index
    @students = Student.all
  end


  def new
    @student = Student.new
  end


  def show
  end


  def edit
  end


  def update
    if @student.update(student_params)
      p 'Student Successfully Updated!'
      redirect_to @student
    else
      render 'edit'
    end
  end


  def create
    @student = Student.new(student_params)
    if @student.save
      p 'student saved'
      redirect_to @student
    else
      p 'Student input rejected for errors'
      p @student.errors.messages
      render 'new'
    end
  end


private

  def set_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:first_name, :last_name, :email, :age, :education)
  end
end
