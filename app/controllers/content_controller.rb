class ContentController < ApplicationController
  
  before_filter :authenticate_user!
  
  def index      
      unless current_user.teacher.blank?
	redirect_to :action => 'indexTeacher'
      end
      @news = News.order('created_at DESC').limit(3)
      @docs = Document.order('created_at DESC').limit(3)
      
      @tasksForToday = Task.all.count
      @tasksForTomorrow = Task.all.count
      @tasksForWeek = Task.all.count
  end
  
  def indexTeacher
    if current_user.teacher.blank?
      redirect_to :action => 'index'
    end
    @classes = SchoolClass.joins(:teachers).where('teachers.id = ?', current_user.teacher).group('name').order('name ASC')
    @plans = Plan.joins(:school_classes => :teachers)
      .where('teachers.id = ?', current_user.teacher)
      .order('day ASC, hour ASC')
      .group('plans.hour,plans.day')
      .limit(5)
  end
end
