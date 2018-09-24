class CoursesController < ApplicationController
  before_action :set_course,  only: [:show, :edit, :update, :destroy]

  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
    @instructor = Instructor.all
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      p 'course Successfully Saved'
      redirect_to @course
    else
      p 'course input rejected for errors'
      p @course.errors.messages
      render 'new'
    end
  end



  def show
  end

  def update
    if @course.update(course_params)
      p 'course Successfully Updated!'
      redirect_to @course
    else
      render 'edit'
    end
  end

  def destroy
      course = Course.find(params[:id])
      @course.destroy
      respond_to do |format|
        format.js
        format.html { p 'html response'; redirect_to root_path }
      end

  end



  private

    def set_course
        @course = Course.find(params[:id])
    end

    def course_params
      params.require(:course).permit(:name, :class_hours, :instructor, :student)
    end

  end
