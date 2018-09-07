class InstructorsController < ApplicationController
before_action :set_instructor, only: [:show, :edit, :update]
after_action :update_info, only: [:create]


  def index
    @instructors = Instructor.all
   end


  def new
    @instructor = Instructor.new
  end


  def create
    @cohort = Cohort.all
    @courses = Course.all
        @instructor = Instructor.new(instructor_params)
    if @instructor.save
      p 'Instructor Successfully Saved!'
      redirect_to @instructor
    else
      p 'Instructor input regected for errors'
      p @instructor.errors.messages
      render 'new'
    end
  end

  def show
    @cohort = Cohort.all
    @courses = Course.all
  end


  def edit
    @cohort = Cohort.all
    @courses = Course.all
  end


  def update
    if @instructor.update(instructor_params)
      p 'Instructor Successfully Updated!'
      redirect_to @instructor
    else
      render 'edit'
  end
end



  private

    def set_instructor
        @instructor = Instructor.find(params[:id])
    end

    def instructor_params
      params.require(:instructor).permit(:first_name, :last_name, :email, :age, :education, :salary, :cohort_id)
    end

    def update_info
      @instructor.update(cohort_name: "#{@instructor.cohort.name}
        ")
    end

end
