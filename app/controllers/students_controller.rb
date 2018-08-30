class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    @student.user_id = current_student.id
    @student.last_name = current_student.last_name
    @student.first_name = curent_student.first_name
    @student.age = current_student.age
    if @student.save
      p 'student saved'
      redirect_to @show
    else
      p 'student rejected for errors'
      p @student.errors.messages
      render 'new'
    end   
  end

  def edit
  end

  def index
  end

  def show
  end

end
