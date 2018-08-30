class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def create

    @student = Student.new(student_params)
    @student.last_name = params[:last_name]
    @student.first_name = params[:first_name]
    @student.age = params[:age]
    @education = params[:education]
    if @student.save
      p 'student saved'
      redirect_to @student
    else
      p 'student input rejected for errors'
      p @student.errors.messages
      render 'new'
    end
  end

  def edit
  end

  def index
    @students = Student.all
  end

  def show
  end

end
