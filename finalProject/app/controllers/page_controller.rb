class PageController < ApplicationController
  before_action :set_values, only: [:show, :edit, :update, :destroy]

  def index
    @DegreeSearch = DegreeInProgress.all
    @DegreeProgress = DegreeInProgress.create(degree_in_progress_params)

  end

  def adminReport
    @Users = User.all
    @report = User.where(params[:user_id])
  end
  def userReport
    @Mappings = CourseMapping.all
    @Finished = FinishedCourse.all
    @DegreeProgress = DegreeInProgress.all
    @Courses = Course.all
    @report = User.find(params[:user_id])
  end

  def majorRequirements
    @search = Course.where(subCat: params[:category])
    @Courses = Course.all
    @CourseMapping = CourseMapping.create(course_mappings_params)
    @Mappings = CourseMapping.all
    
  end

  def studentIncomplete
    @search = Course.where(subCat: params[:category])
    @Mappings = CourseMapping.all
    @Finished = FinishedCourse.all
    @DegreeProgress = DegreeInProgress.all
    @Courses = Course.all
    @FinishedCreate = FinishedCourse.create(finished_course_params)
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
