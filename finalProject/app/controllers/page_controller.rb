class PageController < ApplicationController


  def index

  end
  def studentIncomplete
    @Mappings = CourseMapping.all
    @Finished = FinishedCourse.all
    @DegreeProgress = DegreeInProgress.all
  end

end
