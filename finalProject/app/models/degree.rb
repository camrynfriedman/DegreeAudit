class Degree < ApplicationRecord
    has_many:course_mappings
    has_many:courses, through:CourseMapping
end
