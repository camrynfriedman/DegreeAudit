class User < ApplicationRecord

    has_many :finished_courses
    has_one: degree_in_progress
end
