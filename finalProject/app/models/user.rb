class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  #removed :recoverable to disable the "Forgot password?" option
  devise :database_authenticatable, :registerable,
        :rememberable, :validatable, :trackable

    has_many :finished_courses
    has_many :courses, through: :finished_courses
    has_many :degree_in_progresses
    has_many :degrees, through: :degree_in_progresses
end
