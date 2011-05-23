class ContentController < ApplicationController
  
  before_filter :authenticate_user!
  
  def index      
      if current_user.student.blank?
	redirect_to :action => 'indexTeacher'
      else
	@news = News.order('created_at DESC').limit(3)
	@docs = Document.order('created_at DESC').limit(3)
	
	classId = SchoolClass.joins(:students).where('students.id = ?', current_user.student.first.id).first

	@tasksForToday = Task.joins(:lesson => :school_class).where('school_classes.id = ?', classId).where('DATE(date) = DATE(?)', Time.now).count
	@tasksForTomorrow = Task.joins(:lesson => :school_class).where('school_classes.id = ?', classId).where('DATE(date) = DATE(?)', Date.tomorrow).count
	@tasksForWeek = Task.joins(:lesson => :school_class).where('school_classes.id = ?', classId).where('DATE(date) <= DATE(?)', 7.days.since(Time.now).to_date).where('DATE(date) >= DATE(?)', Time.now).count
      end
  end
  
  def indexTeacher
    if current_user.teacher.blank?
      redirect_to :action => 'index'
    end
    @classes = SchoolClass.joins(:teachers).where('teachers.id = ?', current_user.teacher.first.id).group('name').order('name ASC')
    @lessons = Lesson.joins(:school_class => :teachers)
      .where('teachers.id = ?', current_user.teacher.first.id)
      .order('date ASC')
      .limit(5)
  end
end
