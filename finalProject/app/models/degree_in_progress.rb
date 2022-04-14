class DegreeInProgress < ApplicationRecord
    belongs_to :User
    belongs_to :degree
end
