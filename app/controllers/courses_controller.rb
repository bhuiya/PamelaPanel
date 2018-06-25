class CoursesController < ApplicationController
  def index
    @courses= Course.all
  end

  def new
    @course= Course.new
  end

  def create
    Course.create(course_params)
    flash[:success] = 'Your Student has sucessfully created'
    redirect_to courses_path
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    course = Course.find(params[:id])
    course.update(course_params)
    redirect_to courses_path
  end

  def destroy
    Course.destroy(params[:id])
    render json: {status: 'boom success', message: 'cohort was successfully deleted'}
  end

  def show
    @course = Course.find(params[:id])
  end

  private
    def course_params
       params.require(:course).permit(:course_name, :total_hours)
    end
end
