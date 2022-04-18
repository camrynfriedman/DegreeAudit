class Degree < ApplicationRecord
    has_many:course_mappings
    has_many:courses, through: :course_mappings
    has_many :degree_in_progresses
    has_many :users, through: :degree_in_progresses
end
