class Lesson < ApplicationRecord
  belongs_to :course
  belongs_to :user
  belongs_to :room
  has_many :enrollments
end