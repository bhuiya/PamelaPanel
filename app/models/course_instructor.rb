class CourseInstructor < ApplicationRecord
  belongs_to :instructor
  belongs_to :course
end
