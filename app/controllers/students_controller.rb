class StudentsController < ApplicationController
before_action :set_student, only: [:show, :edit, :update, :destroy]

  def index
    @students = Student.all
  end


  def new
    @student = Student.new
  end


  def show
    # @student.cohort.uniq.each
  end


  def edit
    @students = Student.all
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
    @student.course_id = course_id
    @course = Course.all
    @cohort = Cohort.all
    if @student.save
      p 'student saved'
      redirect_to @student
    else
      p 'Student input rejected for errors'
      p @student.errors.messages
      render 'new'
    end
  end


  def destroy
    @cohort = Cohort.where(course_id: @course_id)
    @cohort.each do |course|
      course.destroy
    end
    @student = Student.find(params[:id])
    @student.destroy
    respond_to do |format|
      format.js
      format.html { p 'html response'; redirect_to root_path}
  end
end

private

  def set_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:first_name, :last_name, :email, :age, :education, :cohort_id, :course_id, :course, :cohort)
  end
end
