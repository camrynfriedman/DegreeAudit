class PageController < ApplicationController
  before_action :set_values, only: [:show, :edit, :update, :destroy]

  def index

  end
  def studentIncomplete
    @Mappings = CourseMapping.all
    @Finished = FinishedCourse.all
    @DegreeProgress = DegreeInProgress.all
  end


  private
  def set_values
    @user = User.find(params[:id])
    @degree = Degree.find(params[:id])
  end
end
