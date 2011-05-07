class ContentController < ApplicationController
  
  before_filter :authenticate_user!
  
  def index      
      unless current_user.teacher.blank?
	redirect_to :action => 'indexTeacher'
      end
      @news = News.order('created_at DESC').limit(3)
      @docs = Document.all
  end
  
  def indexTeacher
#       if current_user.teacher.blank?
# 	redirect_to :action => 'index'
#       end
    @classes = SchoolClass.joins(:teachers).where('teachers.id = ?', 1)
    @plans = Plan.joins(:school_classes => :teachers)
      .where('teachers.id = ?', 1)
      .order('day DESC')
      .limit(5)
  end
end
