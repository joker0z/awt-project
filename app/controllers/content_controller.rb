class ContentController < ApplicationController
  
  before_filter :authenticate_user!
  
  def index      
      unless current_user.teacher.blank?
	redirect_to :action => 'indexTeacher'
      end
  end
  
  def indexTeacher
#       if current_user.teacher.blank?
# 	redirect_to :action => 'index'
#       end
  end
end
