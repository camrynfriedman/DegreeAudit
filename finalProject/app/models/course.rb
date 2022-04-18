class Course < ApplicationRecord
    has_many :course_mappings
    has_many :degrees, through: :course_mappings
    has_many :finished_courses
    has_many :finished_courses, through: :finished_courses
end
