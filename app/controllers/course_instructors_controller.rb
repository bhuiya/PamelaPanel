class CourseInstructorsController < ApplicationController


  def index
    @course_instructors = CourseInstructor.all
  end

  def new

    @course_instructor= CourseInstructor.new
    @courses= Course.all
    @instructors = Instructor.all

  end


    def create
         CourseInstructor.create(course_instructors_params)
         flash[:success] = 'Your Student has sucessfully created'
         redirect_to course_instructors_path
    end

      def edit
            @course_instructor = CourseInstructor.find(params[:id])
            p 'student cohort valure is'
            p @student_cohort
            @courses= Course.all
            @instructors = Instructor.all

      end

      def update

           courseinstructor = CourseInstructor.find(params[:id])
           courseinstructor.update(course_instructors_params)
           redirect_to  course_instructors_path

      end

      def show
           @courseinstructor = CourseInstructor.find(params[:id])


      end


      def destroy
             CourseInstructor.destroy(params[:id])
             redirect_to course_instructors_path
      end

     private
        def course_instructors_params
            params.require(:course_instructor).permit(:course_id, :instructor_id)
        end


end
