class Instructor < ApplicationRecord
  has_many :course_instructors,  dependent: :destroy
  has_many :courses, through: :course_instructors
end
