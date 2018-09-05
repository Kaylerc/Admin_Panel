class CohortsController < ApplicationController
  before_action :set_cohort, only: [:show, :edit, :update]

  def index
    @cohorts = Cohort.all
  end


  def new
    @cohort = Cohort.new
  end

  def create
    @cohort = Cohort.new(cohort_params)
    if @cohort.save
      p 'cohort Successfully Saved'
      redirect_to @cohort
    else
      p 'cohort input rejected for errors'
      p @cohort.errors.messages
      render 'new'
    end
  end


  def show
  end

  def edit
  end

  def update
    if @cohort.update(cohort_params)
      p 'cohort Successfully Updated!'
      redirect_to @cohort
    else
      render 'edit'
  end
end

private

  def set_cohort
      @cohort = Cohort.find(params[:id])
  end

  def cohort_params
    params.require(:cohort).permit(:name, :start_date, :end_date, :instructor, :student)
  end

end
