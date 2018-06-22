class CohortsController < ApplicationController
  def index
    @cohorts= Cohort.all
  end

  def new
    @cohort= Cohort.new
    @courses= Course.all
  end

  def create
       Cohort.create(cohort_params)
       flash[:success] = 'Your Student has sucessfully created'
       redirect_to cohorts_path
  end

  def edit
        @cohort = Cohort.find(params[:id])
        @course = Course.find(@cohort.course_id)
        @course_all= Course.all
  end

  def update
         cohort = Cohort.find(params[:id])
         cohort.update(cohort_params)
         redirect_to cohorts_path
  end
  def destroy
           Cohort.destroy(params[:id])

	         render json: {status: 'boom success', message: 'cohort was successfully deleted'}
      
           # redirect_to cohorts_path
  end

  def show
          @cohort = Cohort.find(params[:id])
  end

     private
         def cohort_params
             params.require(:cohort).permit(:name, :instructor, :start_date, :end_date, :course_id)
         end
end
