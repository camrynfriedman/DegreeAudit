class Course < ApplicationRecord
    has_many :course_mappings
    has_many :degrees, through:CourseMapping
end
