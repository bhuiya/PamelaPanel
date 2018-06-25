class InstructorsController < ApplicationController

  def index
   @instructors= Instructor.all
  end

  def new
    @instructor= Instructor.new
  end

  def create
    Instructor.create(instructor_params)
    flash[:success] = 'Your Student has sucessfully created'
    redirect_to instructors_path
  end

  def edit
    @instructor = Instructor.find(params[:id])
  end

  def update
    instructor = Instructor.find(params[:id])
    instructor.update(instructor_params)
    redirect_to instructors_path
  end

  def destroy
    Instructor.destroy(params[:id])
    render json: {status: 'boom success', message: 'student was successfully deleted'}
  end

  def show
     @instructor = Instructor.find(params[:id])
  end

  private
    def instructor_params
      params.require(:instructor).permit(:first_name, :last_name, :dob, :highest_education, :salary)
 end
end
