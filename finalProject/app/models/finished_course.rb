class FinishedCourse < ApplicationRecord
    belongs_to :user
    belongs_to :courses
end
