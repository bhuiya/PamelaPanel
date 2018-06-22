class Course < ApplicationRecord
  has_many :cohorts
  has_many :course_instructors,  dependent: :destroy
  has_many :instructors, through: :course_instructors
end
