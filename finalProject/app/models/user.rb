class User < ApplicationRecord

    has_many :finished_courses
    has_one:DegreeInProgres
end
