class Student < ApplicationRecord
  include PgSearch
  pg_search_scope :search_by_name,
    against: [:name],
    using: {
      tsearch: { prefix: true }
    }
  mount_uploader :photo, PhotoUploader
  has_many :enrollments
  has_many :lessons, through: :enrollments
  has_many :memos, through: :enrollments
  validates :name, presence: true
end
