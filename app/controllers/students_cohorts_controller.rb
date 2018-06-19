class StudentsCohortsController < ApplicationController
  def index
    @students_cohorts = StudentsCohort.all
  end

  def new
    @students_cohorts= StudentsCohort.new
    @students= Student.all
    @cohorts = Cohort.all

  end

  def edit
        @student_cohort = StudentsCohort.find(params[:id])
        p 'student cohort valure is'
        p @student_cohort
        @cohorts= Cohort.all
        @students = Student.all
        # @course = StudentsCohort.find(@cohort.course_id)
        # # @course_all= Course.all
         # redirect_to students_cohorts_path
  end

  def create
       StudentsCohort.create(students_cohorts_params)
       flash[:success] = 'Your Student has sucessfully created'
       redirect_to students_cohorts_path
    end

    def update
         studentscohorts = StudentsCohort.find(params[:id])
         studentscohorts.update(students_cohorts_params)
         redirect_to  students_cohorts_path

    end

    def show
         @studentscohort = StudentsCohort.find(params[:id])
         p @studentscohort

    end


    def destroy
           StudentsCohort.destroy(params[:id])
           redirect_to students_cohorts_path
    end

   private
      def students_cohorts_params
          params.require(:students_cohort).permit(:student_id, :cohort_id)
      end

end
