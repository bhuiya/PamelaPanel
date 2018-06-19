class Cohort < ApplicationRecord
  has_many :students_cohorts, dependent: :destroy
  has_many :students, through: :students_cohorts, dependent: :destroy

  belongs_to :course
end
