class CourseMapping < ApplicationRecord
    belongs_to :course
    belongs_to :degree
end
