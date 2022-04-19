class PageController < ApplicationController
  before_action :set_values, only: [:show, :edit, :update, :destroy]

  def index
    @DegreeSearch = DegreeInProgress.all
    @DegreeProgress = DegreeInProgress.create(degree_in_progress_params)
    if @DegreeProgress.save
        redirect_to @DegreeProgress, notice: 'Success!'

    end
  end

  def majorRequirements
    @search = Course.where(subCat: params[:category])
    @Courses = Course.all
    @CourseMapping = CourseMapping.create(course_mappings_params)
    @Mappings = CourseMapping.all
  end

  def studentIncomplete
    @Mappings = CourseMapping.all
    @Finished = FinishedCourse.all
    @DegreeProgress = DegreeInProgress.all
    @Courses = Course.all
    @FinishedCreate = FinishedCourse.create(finished_course_params)
    if @FinishedCreate.save
        redirect_to @FinishedCreate, notice: 'Success!'
    end
  end

  def studentComplete
    @Mappings = CourseMapping.all
    @Finished = FinishedCourse.all
    @DegreeProgress = DegreeInProgress.all
    @Courses = Course.all
  end

 private
  def finished_course_params
    params.permit(:id, :user_id, :course_id)
  end

  private
  def degree_in_progress_params
    params.permit(:id, :user_id, :degree_id)
  end

  private
  def course_mappings_params
    params.permit(:id, :course_id, :degree_id)
  end
end
