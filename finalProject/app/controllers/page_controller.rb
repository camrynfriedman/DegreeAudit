require 'csv'
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

  def exportData

    response.headers['Content-Type'] = 'text/csv'
    response.headers['Content-Disposition'] = "attachement; filename = report.csv"
    @Mappings = CourseMapping.all
    @Finished = FinishedCourse.all
    @DegreeProgress = DegreeInProgress.all
    @Courses = Course.all
    @report = User.find(params[:user_id])
    render template: "page/exportData.csv.erb", :layout => false
  end

  def userReport
    @Mappings = CourseMapping.all
    @Finished = FinishedCourse.all
    @DegreeProgress = DegreeInProgress.all
    @Courses = Course.all
    @report = User.find(params[:user_id])
  end

  def majorRequirements
    @search = Course.find_by(subCat: params[:category].to_s.upcase)
    @searchRemove = Course.find_by(subCat: params[:categoryRemove].to_s.upcase)
    @Courses = Course.all
    @CourseMapping = CourseMapping.create(course_mappings_params)
    @Mappings = CourseMapping.all
  end

  def studentComplete
    @search = Course.find_by(subCat: params[:category].to_s.upcase)

    @Mappings = CourseMapping.all
    @Finished = FinishedCourse.all
    @DegreeProgress = DegreeInProgress.all
    @Courses = Course.all
    @FinishedCreate = FinishedCourse.create(finished_course_params)
  end

  def addCourse
    @addCourse = Course.new(course_params)

    @Courses = Course.all


    if @addCourse.title.length > 0 && @addCourse.subCat.length > 0 && @addCourse.MaxCH != nil && @addCourse.MinCH != nil 
      check = true
      @Courses.each do |c|
        if c.subCat == @addCourse.subCat
          check = false
        end
      end
      if check
        @addCourse.save
      end
    end

  end

  private
  def course_params
    params.permit(:id, :title, :subCat, :MaxCH, :MinCH)
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
