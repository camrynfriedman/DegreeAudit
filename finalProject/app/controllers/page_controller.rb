class PageController < ApplicationController
  before_action :set_values, only: [:show, :edit, :update, :destroy]

  def index
    @DegreeProgress = DegreeInProgress.create(degree_in_progress_params)
    if @DegreeProgress.save
        redirect_to @DegreeProgress, notice: 'Success!'

    end
  end
  def studentIncomplete
    @Mappings = CourseMapping.all
    @Finished = FinishedCourse.all
    @DegreeProgress = DegreeInProgress.all
    @Courses = Course.all
  end


  private
  def degree_in_progress_params
    params.permit(:id, :user_id, :degree_id)
  end
end
